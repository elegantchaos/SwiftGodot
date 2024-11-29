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

/// Represents the input shader parameter within the visual shader graph.
/// 
/// Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check `Tutorials` section for link).
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``inputTypeChanged``
open class VisualShaderNodeInput: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeInput" }
    
    /* Properties */
    
    /// One of the several input constants in lower-case style like: "vertex" (`VERTEX`) or "point_size" (`POINT_SIZE`).
    final public var inputName: String {
        get {
            return get_input_name ()
        }
        
        set {
            set_input_name (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_input_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_input_name")
        return withUnsafePointer(to: &VisualShaderNodeInput.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_input_name(_ name: String) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeInput.method_set_input_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_input_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_input_name")
        return withUnsafePointer(to: &VisualShaderNodeInput.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_input_name() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeInput.method_get_input_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_input_real_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_input_real_name")
        return withUnsafePointer(to: &VisualShaderNodeInput.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a translated name of the current constant in the Godot Shader Language. E.g. `"ALBEDO"` if the ``inputName`` equal to `"albedo"`.
    public final func getInputRealName() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeInput.method_get_input_real_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    // Signals 
    /// Emitted when input is changed via ``inputName``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.inputTypeChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var inputTypeChanged: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "input_type_changed") }
    
}

