//
//  ClassGen.swift
//  Generator
//
//  Created by Miguel de Icaza on 3/26/23.
//

import Foundation
import ExtensionApi

// Populated with the types loaded from the api.json, we assume they are all reference types
// anything else is not
var referenceTypes: [String:Bool] = [:]

// Maps a typename to its toplevel Json element
var tree: [String: JGodotExtensionAPIClass] = [:]

var typeToChildren: [String:[String]] = [:]

func makeDefaultInit (godotType: String, initCollection: String = "") -> String {
    switch godotType {
    case "Variant":
        return "nil"
    case "int":
        return "0"
    case "float":
        return "0.0"
    case "bool":
        return "false"
    case "String":
        return "String ()"
    case "Array":
        return "GArray ()"
    case "Dictionary":
        return "GDictionary ()"
    case let t where t.starts (with: "typedarray::"):
        let nestedTypeName = String (t.dropFirst(12))
        let simple = SimpleType(type: nestedTypeName)
        if classMap [nestedTypeName] != nil {
            return "ObjectCollection<\(getGodotType (simple))>(\(initCollection))"
        } else {
            return "VariantCollection<\(getGodotType (simple))>(\(initCollection))"
        }
    case "enum::Error":
        return ".ok"
    case "enum::Variant.Type":
        return ".`nil`"
    case let e where e.starts (with: "enum::"):
        return "\(e.dropFirst(6))(rawValue: 0)!"
    case let e where e.starts (with: "bitfield::"):
        let simple = SimpleType (type: godotType, meta: nil)
        return "\(getGodotType (simple)) ()"
   
    case let other where builtinGodotTypeNames [other] != nil:
        return "\(godotType) ()"
    case "void*", "const Glyph*":
        return "nil"
    default:
        return "\(getGodotType(SimpleType (type: godotType))) ()"
    }
}

func makeDefaultReturn (godotType: String) -> String {
    return "return \(makeDefaultInit(godotType: godotType))"
}

func argTypeNeedsCopy (godotType: String) -> Bool {
    if isStructMap [godotType] ?? false {
        return true
    }
    if godotType.starts(with: "enum::") {
        return true
    }
    if godotType.starts(with: "bitfield::") {
        return true
    }
    return false
}

func generateVirtualProxy (_ p: Printer,
                           cdef: JGodotExtensionAPIClass,
                           methodName: String,
                           method: JGodotClassMethod) {
    // Generate the glue for the virtual methods (those that start with an underscore in Godot
    guard method.isVirtual else {
        print ("ERROR: internally, we passed methods that are not virtual")
        return
    }
    let virtRet: String?
    var returnOptional = false
    if let ret = method.returnValue {
        let godotReturnType = ret.type
        let godotReturnTypeIsReferenceType = classMap [godotReturnType] != nil
        returnOptional = godotReturnTypeIsReferenceType && isReturnOptional(className: cdef.name, method: methodName)

        virtRet = getGodotType(ret)
    } else {
        virtRet = nil
    }
    p ("func _\(cdef.name)_proxy\(method.name) (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?)") {
        p ("guard let instance else { return }")
        if let arguments = method.arguments, arguments.count > 0 {
            p ("guard let args else { return }")
        }
        p ("let swiftObject = Unmanaged<\(cdef.name)>.fromOpaque(instance).takeUnretainedValue()")
        
        var argCall = ""
        var argPrep = ""
        var i = 0
        for arg in method.arguments ?? [] {
            if argCall != "" { argCall += ", " }
            let argName = escapeSwift (snakeToCamel (arg.name))
            
            // Drop the first argument name for methods whose name already include the argument
            // name, like 'setMultiplayerPeer (peer: ..)' becomes 'setMultiplayerPeer (_ peer: ...)'
            if i > 0 || !method.name.hasSuffix("_\(arg.name)") {
                argCall += "\(argName): "
            }
            if arg.type == "String" {
                argCall += "GString.stringFromGStringPtr (ptr: args [\(i)]!) ?? \"\""
            } else if classMap [arg.type] != nil {
                //
                // This idiom guarantees that: if this is a known object, we surface this
                // object, but if it is not known, then we create the instance
                //
                argPrep += "let resolved_\(i) = args [\(i)]!.load (as: UnsafeRawPointer.self)\n"
                let handleResolver: String
                if hasSubclasses.contains(cdef.name) {
                    // If the type we are bubbling up has subclasses, we want to create the most
                    // derived type if possible, so we perform the longer lookup
                    handleResolver = "lookupObject (nativeHandle: resolved_\(i))!"
                } else {
                    // There are no subclasses, so we can create the object right away
                    handleResolver = "\(arg.type) (nativeHandle: resolved_\(i))"
                }
                argCall += "lookupLiveObject (handleAddress: resolved_\(i)) as? \(arg.type) ?? \(handleResolver)"
            } else if let storage = builtinClassStorage [arg.type] {
                argCall += "\(mapTypeName (arg.type)) (content: args [\(i)]!.assumingMemoryBound (to: \(storage).self).pointee)"
            } else {
                let gt = getGodotType(arg)
                argCall += "args [\(i)]!.assumingMemoryBound (to: \(gt).self).pointee"
            }
            i += 1
        }
        let hasReturn = method.returnValue != nil
        if argPrep != "" {
            p (argPrep)
        }
        var call = "swiftObject.\(methodName) (\(argCall))"
        if method.returnValue?.type == "String" {
            call = "GString (\(call))"
        }
        if hasReturn {
            p ("let ret = \(call)")
        } else {
            p ("\(call)")
        }
        if let ret = method.returnValue {
            if ret.type == "Variant" {
                p("""
                retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
                ret?.content = Variant.zero
                """)
            } else if isStructMap [ret.type] ?? false || isStructMap [virtRet ?? "NON_EXIDTENT"] ?? false || ret.type.starts(with: "bitfield::"){
                p ("retPtr!.storeBytes (of: ret, as: \(virtRet!).self)")
            } else if ret.type.starts(with: "enum::") {
                p ("retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)")
            } else if ret.type.contains("*") {
                p ("retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)")
            } else {
                let derefField: String
                let derefType: String
                if ret.type.starts(with: "typedarray::") {
                    derefField = "array.content"
                    derefType = "type (of: ret.array.content)"
                } else if classMap [ret.type] != nil {
                    derefField = "handle"
                    derefType = "UnsafeRawPointer?.self"
                } else {
                    derefField = "content"
                    derefType = "type (of: ret.content)"
                }
                
                let target: String
                if ret.type.starts (with: "typedarray::") {
                    target = "array.content"
                } else {
                    target = classMap [ret.type] != nil ? "handle" : "content"
                }
                p ("retPtr!.storeBytes (of: ret\(returnOptional ? "?" : "").\(derefField), as: \(derefType)) // \(ret.type)")
                
                // Poor man's transfer the ownership: we clear the content
                // so the destructor has nothing to act on, because we are
                // returning the reference to the other side.
                if target == "content" {
                    let type = getGodotType(SimpleType(type: ret.type))
                    switch type {
                    case "String":
                        p ("ret.content = GString.zero")
                    case "Array":
                        p ("ret.content = GArray.zero")
                    default:
                        p ("ret.content = \(type).zero")
                    }
                }
            }
        }
    }
}

// Dictioanry of Godot Type Name to array of method names that can get a @discardableResult
// Notice that the type is looked up as the original Godot name, not
// the mapped name (it is "Array", not "GArray"):
let discardableResultList: [String: Set<String>] = [
    "Object": ["emit_signal"],
    "Array": ["resize"],
    "PackedByteArray": ["append", "push_back"],
    "PackedColorArray": ["append", "push_back", "resize"],
    "PackedFloat32Array": ["append", "push_back", "resize"],
    "PackedFloat64Array": ["append", "push_back", "resize"],
    "PackedInt32Array": ["append", "push_back", "resize"],
    "PackedInt64Array": ["append", "push_back", "resize"],
    "PackedStringArray": ["append", "push_back", "resize"],
    "PackedVector2Array": ["append", "push_back", "resize"],
    "PackedVector3Array": ["append", "push_back", "resize"],
    "PackedVector4Array": ["append", "push_back", "resize"],
    "CharacterBody2D": ["move_and_slide"],
    "CharacterBody3D": ["move_and_slide"],
    "RefCounted": ["reference", "unreference"]
]

// Dictionary used to tell the generator to _not_ generate specific functionality since
// Source/Native has a better alternative that avoids having to access Godot pointers.
let omittedMethodsList: [String: Set<String>] = [
    "Color": ["lerp"],
    "Vector2": ["lerp", "snapped"],
    "Vector2i": ["snapped"],
    "Vector3": ["lerp", "snapped"],
    "Vector3i": ["snapped"],
    "Vector4": ["lerp", "snapped"],
    "Vector4i": ["snapped"],
    "utility_functions": [
        "absf", "absi", "absi", "acos", "acosh", "asbs", "asin", "asinh", "atan", "atan2", "atanh", "ceil", "ceilf",
        "ceili", "cos", "cosh", "deg_to_rad", "exp", "floor", "floor", "floorf", "floorf", "floori", "floori",
        "fmod", "fposmod", "inverse_lerp", "lerp", "lerpf", "log", "posmod", "pow", "rad_to_deg", "round", "roundf",
        "roundi", "sin", "snapped", "snappedf", "sqrt", "tan", "tanh",
    ],
]

// Dictionary used to explicitly tell the generator to replace the first argument label with "_ "
let omittedFirstArgLabelList: [String: Set<String>] = [
    "GArray": ["append"],
    "PackedColorArray": ["append"],
    "PackedFloat64Array": ["append"],
    "PackedInt64Array": ["append"],
    "PackedStringArray": ["append"],
    "PackedVector2Array": ["append"],
    "PackedVector3Array": ["append"],

]

/// Determines if the first argument name should be replaced with an underscore.
///
/// First argument name should be omitted if:
/// 1. The name matches the suffix of the method name, for example: `addPattern(pattern: xx)` becomes `addPattern(_ pattern: xx)`
/// 2. If it's found in `omittedFirstArgLabelList`.
/// - Parameters:
///   - typeName: Name of the parent type
///   - methodName: Name of the method
///   - argName: Name of the argument
func shouldOmitFirstArgLabel(typeName: String, methodName: String, argName: String) -> Bool {
    return methodName.hasSuffix ("_\(argName)") || omittedFirstArgLabelList[typeName]?.contains(methodName) == true
}

///
/// Returns a hashtable mapping a godot method name to a Swift Name + its definition
/// this list is used to generate later the proxies outside the class
///
func generateMethods (_ p: Printer,
                      cdef: JGodotExtensionAPIClass,
                      methods: [JGodotClassMethod],
                      usedMethods: Set<String>,
                      asSingleton: Bool) -> [String:(String, JGodotClassMethod)] {
    p ("/* Methods */")
    
    var virtuals: [String:(String, JGodotClassMethod)] = [:]
   
    for method in methods {
        performExplaniningNonCriticalErrors {
            if let virtualMethodName = try generateMethod (p, method: method, className: cdef.name, cdef: cdef, usedMethods: usedMethods, generatedMethodKind: .classMethod, asSingleton: asSingleton) {
                virtuals[method.name] = (virtualMethodName, method)
            }
        }
    }
    
    if virtuals.count > 0 {
        p ("override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual?"){
            p ("guard implementedOverrides().contains(name) else { return nil }")
            p ("switch name.description") {
                for name in virtuals.keys.sorted() {
                    p ("case \"\(name)\":")
                    p ("    return _\(cdef.name)_proxy\(name)")
                }
                p ("default:")
                p ("    return super.getVirtualDispatcher (name: name)")
            }
        }
    }
    return virtuals
}

func generateConstants (_ p: Printer,
                        cdef: JGodotExtensionAPIClass,
                        _ constants: [JGodotValueElement]) {
    p ("/* Constants */")
    
    for constant in constants {
        doc (p, cdef, constant.description)
        p ("public static let \(snakeToCamel (constant.name)) = \(constant.value)")
    }
}
func generateProperties (_ p: Printer,
                         cdef: JGodotExtensionAPIClass,
                         _ properties: [JGodotProperty],
                         _ methods: [JGodotClassMethod],
                         _ referencedMethods: inout Set<String>,
                         asSingleton: Bool)
{
    p ("\n/* Properties */\n")

    func findMethod (forProperty: JGodotProperty, startAt: JGodotExtensionAPIClass, name: String, resolvedName: inout String, argName: inout String) -> JGodotClassMethod? {
        if let here = methods.first(where: { $0.name == name}) {
            return here
        }
        var cdef: JGodotExtensionAPIClass? = startAt
        while true {
            guard let parentName = cdef?.inherits, parentName != "" else {
                return nil
            }
            cdef = classMap [parentName]
            guard let cdef else {
                print ("Warning: Missing type \(parentName)")
                return nil
            }
            if let there = cdef.methods?.first (where: { $0.name == name }) {
                //print ("Congrats, found a method that was previously missing!")
                
                // Now, if the parent class has a property referencing this,
                // we use the mapped name, otherwise, we use the raw name
                if cdef.properties?.contains(where: { $0.getter == there.name || $0.setter == there.name }) ?? false {
                    return there
                }
                resolvedName = godotMethodToSwift (there.name)
                if let aname = there.arguments?.first?.name {
                    // Now check thta this argument does not need to be dropped
                    if !there.name.hasSuffix("_\(aname)") {
                        argName = aname + ": "
                    }
                }
                return there
            }
        }
    }
    
    for property in properties {
        var type: String?
    
        // Ignore properties that only have getters, just let the setter
        // method be surfaced instead
        if property.getter == "" {
            print ("Property with only a setter: \(cdef.name).\(property.name)")
            continue
        }
        if property.getter.starts(with: "_") {
            // These exist, but have no equivalent method
            // see VisualShaderNodeParameterRef._parameter_type as an example
            continue
        }

//        // There are properties declared, but they do not actually exist
//        // CurveTexture claims to have a get_width, but the method does not exist
//        if type == nil {
//            continue
//        }
//        if type!.hasPrefix("Vector3.Axis") {
//            continue
//        }
        let loc = "\(cdef.name).\(property.name)"
        
        var getterName = property.getter
        var gettterArgName = ""
        guard let method = findMethod (forProperty: property, startAt: cdef, name: property.getter, resolvedName: &getterName, argName: &gettterArgName) else {
            // Not a bug, but needs to be handled https://github.com/migueldeicaza/SwiftGodot/issues/67
            //print ("GodotBug: \(loc): property declared \(property.getter), but it does not exist with that name")
            continue
        }
        var setterName = property.setter ?? ""
        var setterArgName = ""
        var setterMethod: JGodotClassMethod? = nil
        if let psetter = property.setter {
            setterMethod = findMethod(forProperty: property, startAt: cdef, name: psetter, resolvedName: &setterName, argName: &setterArgName)
            if setterMethod == nil {
                // Not a bug, but needs to be handled: https://github.com/migueldeicaza/SwiftGodot/issues/67
                //print ("GodotBug \(loc) property declared \(property.setter!) but it does not exist with that name")
                continue
            }
        }

        if method.arguments?.count ?? 0 > 1 {
            print ("WARNING \(loc) property references a getter method that takes more than one argument")
            continue
        }
        if setterMethod?.arguments?.count ?? 0 > 2 {
            print ("WARNING \(loc) property references a getter method that takes more than two arguments")
            continue
        }
        guard (method.returnValue?.type) != nil else {
            print ("WARNING \(loc) Could not get a return type for method")
            continue
        }
        let godotReturnType = method.returnValue?.type
        let godotReturnTypeIsReferenceType = classMap [godotReturnType ?? ""] != nil

        let propertyOptional = godotReturnType == "Variant" || godotReturnTypeIsReferenceType && isReturnOptional(className: cdef.name, method: property.getter)
        
        // Lookup the type from the method, not the property,
        // sometimes the method is a GString, but the property is a StringName
        type = getGodotType (method.returnValue) + (propertyOptional ? "?" : "")
        

        // Ok, we have an indexer, this means we call the property with an int
        // but we need the type from the method
        var access: String
        if let idx = property.index {
            let type = getGodotType(method.arguments! [0])
            if type == "Int32" {
                access = "\(idx)"
            } else {
                access = "\(type) (rawValue: \(idx))!"
            }
        } else {
            access = ""
        }
        
        if property.description != "" {
            doc (p, cdef, property.description)
        }
        p ("\(asSingleton ? "static" : "final") public var \(godotPropertyToSwift (property.name)): \(type!)"){
            p ("get"){
                p ("return \(getterName) (\(gettterArgName)\(access))")
            }
            referencedMethods.insert (property.getter)
            if let setter = property.setter {
                p ("set") {
                    var value = "newValue"
                    if type == "StringName" && setterMethod?.arguments![0].type == "String" {
                        value = "String (newValue)"
                    }
                    var ignore = ""
                    if setterMethod?.returnValue != nil {
                        ignore = "_ = "
                    }
                    p ("\(ignore)\(setterName) (\(access)\(access != "" ? ", " : "")\(setterArgName)\(value))")
                }
                referencedMethods.insert (setter)
            }
        }
    }
}

#if false
var okList: Set<String> = [ "RefCounted", "Node", "Sprite2D", "Node2D", "CanvasItem", "Object", "String", "StringName", "AStar2D", "Material", "Camera3D", "Node3D", "ProjectSettings", "MeshInstance3D", "BoxMesh", "SceneTree", "Window", "Label", "Timer", "AudioStreamPlayer", "PackedScene", "PathFollow2D", "InputEvent", "ClassDB", "AnimatedSprite2D", "Input", "CollisionShape2D", "SpriteFrames", "RigidBody2D" ]
var skipList = Set<String>()
#else
var okList = Set<String>()
var skipList = Set<String>()
#endif

func generateClasses (values: [JGodotExtensionAPIClass], outputDir: String?) async {
    // TODO: duplicate, we can remove this and use classMap
    // Assemble all the reference types, we use to test later
    for cdef in values {
        referenceTypes[cdef.name] = true
    }
    // TODO: no longer used, probably can remove
    // Also a convenient hash to go from name to json
    // And track which types must be opened up
    for cdef in values {
        tree [cdef.name] = cdef
        
        let base = cdef.inherits ?? ""
        if base != "" {
            if var v = typeToChildren [cdef.name] {
                v.append(cdef.inherits ?? "")
            } else {
                typeToChildren [cdef.name] = [cdef.inherits ?? ""]
            }
        }
    }
    
    // Collect all the signals
//    for cdef in values {
//        if let signals = cdef.signals {
//            for signal in signals {
//                if signal.arguments! [0] == signal.arguments! [1] {
//
//                }
//            }
//        }
//    }
    
    await withTaskGroup(of: Void.self) { group in
        for cdef in values {
            group.addTask {
                await processClass (cdef: cdef, outputDir: outputDir)
            }
        }
    }
}

func generateSignals (_ p: Printer,
                      cdef: JGodotExtensionAPIClass,
                      signals: [JGodotSignal]) {
    p ("// Signals ")
    var parameterSignals: [JGodotSignal] = []
    
    for signal in signals {
        let signalProxyType: String
        let lambdaSig: String
        if signal.arguments != nil {
            parameterSignals.append (signal)
            
            signalProxyType = getGenericSignalType(signal)
            lambdaSig = " \(getGenericSignalLambdaArgs(signal)) in"
        } else {
            signalProxyType = "GenericSignal< /* no args */ >"
            lambdaSig = ""
        }
        let signalName = godotMethodToSwift (signal.name)
        
        doc (p, cdef, signal.description)
        p ("///")
        doc (p, cdef, "To connect to this signal, reference this property and call the\n`connect` method with the method you want to invoke\n")
        doc (p, cdef, "Example:")
        doc (p, cdef, "```swift")
        doc (p, cdef, "obj.\(signalName).connect {\(lambdaSig)")
        p ("///    print (\"caught signal\")\n/// }")
        doc (p, cdef, "```")
        p ("public var \(signalName): \(signalProxyType) { \(signalProxyType) (target: self, signalName: \"\(signal.name)\") }")
        p ("")
    }
}

/// Return the type of a signal's parameters.
func getGenericSignalType(_ signal: JGodotSignal) -> String {
    var argTypes: [String] = []
    for signalArgument in signal.arguments ?? [] {
        let godotType = getGodotType(signalArgument)
        if !godotType.isEmpty && godotType != "Variant" {
            argTypes.append(godotType)
        }
    }
                
    return argTypes.isEmpty ? "GenericSignal< /* no args */ >" : "GenericSignal<\(argTypes.joined(separator: ", "))>"
 }
        
/// Return the names of a signal's parameters,
/// for use in documenting the corresponding lambda.
func getGenericSignalLambdaArgs(_ signal: JGodotSignal) -> String {
    var argNames: [String] = []
    for signalArgument in signal.arguments ?? [] {
        argNames.append(escapeSwift(snakeToCamel(signalArgument.name)))
    }

    return argNames.joined(separator: ", ")
}

func generateSignalDocAppendix (_ p: Printer, cdef: JGodotExtensionAPIClass, signals: [JGodotSignal]?) {
    guard let signals = signals, signals.count > 0 else {
        return
    }
    if signals.count > 0 {
        doc (p, cdef, "\nThis object emits the following signals:")
    } else {
        doc (p, cdef, "\nThis object emits this signal:")
    }
    for signal in signals {
        let signalName = godotMethodToSwift (signal.name)
        doc (p, cdef, "- ``\(signalName)``")
    }
}

func processClass (cdef: JGodotExtensionAPIClass, outputDir: String?) async {
    // Determine if it is a singleton, but exclude EditorInterface
    let isSingleton = jsonApi.singletons.contains (where: { $0.name == cdef.name })
    let asSingleton = isSingleton && cdef.name != "EditorInterface"
    
    // Clear the result
    let p = await PrinterFactory.shared.initPrinter(cdef.name)
    p.preamble()
    p ("// Generated by Swift code generator - do not edit\n@_implementationOnly import GDExtension\n")
    
    // Save it
    defer {
        if let outputDir {
            p.save(outputDir + "\(cdef.name).swift")
        }
    }
    
    let inherits = cdef.inherits ?? "Wrapped"
    let typeDecl = "open class \(cdef.name): \(inherits)"
    
    var virtuals: [String: (String, JGodotClassMethod)] = [:]
    if cdef.brief_description == "" {
        if cdef.description != "" {
            doc (p, cdef, cdef.description)
        }
    } else {
        doc (p, cdef, cdef.brief_description)
        if cdef.description != "" {
            doc (p, cdef, "")      // Add a newline before the fuller description
            doc (p, cdef, cdef.description)
        }
    }
    
    generateSignalDocAppendix (p, cdef: cdef, signals: cdef.signals)
    // class or extension (for Object)
    p (typeDecl) {
        if isSingleton {
            p ("/// The shared instance of this class")
            p.staticVar(visibility: "public ", name: "shared", type: cdef.name) {
                p ("return withUnsafePointer (to: &\(cdef.name).godotClassName.content)", arg: " ptr in") {
                    if hasSubclasses.contains(cdef.name) {
                        p ("lookupObject (nativeHandle: gi.global_get_singleton (ptr)!)!")
                    } else {
                        p ("\(cdef.name) (nativeHandle: gi.global_get_singleton (ptr)!)")
                    }
                }
            }
        }
        p ("override open class var godotClassName: StringName { \"\(cdef.name)\" }")

        if cdef.name == "RefCounted" {
            p ("public required init ()") {
                p ("super.init ()")
                p ("_ = initRef()")
            }
            p ("public required init(nativeHandle: UnsafeRawPointer)") {
                p ("super.init (nativeHandle: nativeHandle)")
                p ("reference()")
                p ("ownsHandle = true")
            }
        }
        var referencedMethods = Set<String>()
        
        if let enums = cdef.enums {
            generateEnums (p, cdef: cdef, values: enums, prefix: nil)
        }
        
        let oResult = p.result
        
        if let constants = cdef.constants {
            generateConstants (p, cdef: cdef, constants)
        }
        
        if let properties = cdef.properties {
            generateProperties (p, cdef: cdef, properties, cdef.methods ?? [], &referencedMethods, asSingleton: asSingleton)
        }
        if let methods = cdef.methods {
            virtuals = generateMethods (p, cdef: cdef, methods: methods, usedMethods: referencedMethods, asSingleton: asSingleton)
        }
        
        if let signals = cdef.signals {
            generateSignals (p, cdef: cdef, signals: signals)
        }

        // Remove code that we did not want generated
        if skipList.contains (cdef.name) || (okList.count > 0 && !okList.contains (cdef.name)) {
            p.result = oResult
        }
    }

    if virtuals.count > 0 {
        p ("// Support methods for proxies")
        for k in virtuals.keys.sorted () {
            guard let (methodName, methodDef) = virtuals [k] else {
                print ("Internal error: in processClass \(cdef.name)")
                continue
            }
            if !skipList.contains (cdef.name) && (okList.count == 0 || okList.contains (cdef.name)) {
                generateVirtualProxy(p, cdef: cdef, methodName: methodName, method: methodDef)
            }
        }
    }
}

func generateCtorPointers (_ p: Printer) {
    p ("var godotFrameworkCtors = [")
    for x in referenceTypes.keys.sorted() {
        p ("    \"\(x)\": \(x).self, //(nativeHandle:),")
    }
    p ("]")
}
