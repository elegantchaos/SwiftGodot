// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a GLTF light.
/// 
/// Represents a light as defined by the `KHR_lights_punctual` GLTF extension.
open class GLTFLight: Resource {
    override open class var godotClassName: StringName { "GLTFLight" }
    
    /* Properties */
    
    /// The ``Color`` of the light. Defaults to white. A black color causes the light to have no effect.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// The intensity of the light. This is expressed in candelas (lumens per steradian) for point and spot lights, and lux (lumens per m²) for directional lights. When creating a Godot light, this value is converted to a unitless multiplier.
    final public var intensity: Double {
        get {
            return get_intensity ()
        }
        
        set {
            set_intensity (newValue)
        }
        
    }
    
    /// The type of the light. The values accepted by Godot are "point", "spot", and "directional", which correspond to Godot's ``OmniLight3D``, ``SpotLight3D``, and ``DirectionalLight3D`` respectively.
    final public var lightType: String {
        get {
            return get_light_type ()
        }
        
        set {
            set_light_type (newValue)
        }
        
    }
    
    /// The range of the light, beyond which the light has no effect. GLTF lights with no range defined behave like physical lights (which have infinite range). When creating a Godot light, the range is clamped to 4096.
    final public var range: Double {
        get {
            return get_range ()
        }
        
        set {
            set_range (newValue)
        }
        
    }
    
    /// The inner angle of the cone in a spotlight. Must be less than or equal to the outer cone angle.
    /// 
    /// Within this angle, the light is at full brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. When creating a Godot ``SpotLight3D``, the ratio between the inner and outer cone angles is used to calculate the attenuation of the light.
    /// 
    final public var innerConeAngle: Double {
        get {
            return get_inner_cone_angle ()
        }
        
        set {
            set_inner_cone_angle (newValue)
        }
        
    }
    
    /// The outer angle of the cone in a spotlight. Must be greater than or equal to the inner angle.
    /// 
    /// At this angle, the light drops off to zero brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. If this angle is a half turn, then the spotlight emits in all directions. When creating a Godot ``SpotLight3D``, the outer cone angle is used as the angle of the spotlight.
    /// 
    final public var outerConeAngle: Double {
        get {
            return get_outer_cone_angle ()
        }
        
        set {
            set_outer_cone_angle (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_from_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("from_node")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3907677874)!
            }
            
        }
        
    }()
    
    /// Create a new GLTFLight instance from the given Godot ``Light3D`` node.
    public static func fromNode(lightNode: Light3D?) -> GLTFLight? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: lightNode?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_from_node, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_to_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("to_node")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2040811672)!
            }
            
        }
        
    }()
    
    /// Converts this GLTFLight instance into a Godot ``Light3D`` node.
    public final func toNode() -> Light3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFLight.method_to_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_from_dictionary: GDExtensionMethodBindPtr = {
        let methodName = StringName("from_dictionary")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4057087208)!
            }
            
        }
        
    }()
    
    /// Creates a new GLTFLight instance by parsing the given ``GDictionary``.
    public static func fromDictionary(_ dictionary: GDictionary) -> GLTFLight? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_from_dictionary, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_to_dictionary: GDExtensionMethodBindPtr = {
        let methodName = StringName("to_dictionary")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Serializes this GLTFLight instance into a ``GDictionary``.
    public final func toDictionary() -> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall(GLTFLight.method_to_dictionary, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_color")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3200896285)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color() -> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(GLTFLight.method_get_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_color")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color(_ color: Color) {
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_intensity: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_intensity")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_intensity() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFLight.method_get_intensity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_intensity: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_intensity")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_intensity(_ intensity: Double) {
        withUnsafePointer(to: intensity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_intensity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_light_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_light_type")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_light_type() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFLight.method_get_light_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_light_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_light_type")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_light_type(_ lightType: String) {
        let lightType = GString(lightType)
        withUnsafePointer(to: lightType.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_light_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_range: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_range")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_range() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFLight.method_get_range, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_range: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_range")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_range(_ range: Double) {
        withUnsafePointer(to: range) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_range, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_inner_cone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_inner_cone_angle")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inner_cone_angle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFLight.method_get_inner_cone_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_inner_cone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_inner_cone_angle")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inner_cone_angle(_ innerConeAngle: Double) {
        withUnsafePointer(to: innerConeAngle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_inner_cone_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_outer_cone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_outer_cone_angle")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outer_cone_angle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFLight.method_get_outer_cone_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_outer_cone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_outer_cone_angle")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outer_cone_angle(_ outerConeAngle: Double) {
        withUnsafePointer(to: outerConeAngle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_set_outer_cone_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_additional_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_additional_data")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// 
    public final func getAdditionalData(extensionName: StringName) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFLight.method_get_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static var method_set_additional_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_additional_data")
        return withUnsafePointer(to: &GLTFLight.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// 
    public final func setAdditionalData(extensionName: StringName, additionalData: Variant?) {
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: additionalData.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFLight.method_set_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

