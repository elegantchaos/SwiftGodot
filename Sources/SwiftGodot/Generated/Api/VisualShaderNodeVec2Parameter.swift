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

/// A ``Vector2`` parameter to be used within the visual shader graph.
/// 
/// Translated to `uniform vec2` in the shader language.
open class VisualShaderNodeVec2Parameter: VisualShaderNodeParameter {
    override open class var godotClassName: StringName { "VisualShaderNodeVec2Parameter" }
    
    /* Properties */
    
    /// Enables usage of the ``defaultValue``.
    final public var defaultValueEnabled: Bool {
        get {
            return is_default_value_enabled ()
        }
        
        set {
            set_default_value_enabled (newValue)
        }
        
    }
    
    /// A default value to be assigned within the shader.
    final public var defaultValue: Vector2 {
        get {
            return get_default_value ()
        }
        
        set {
            set_default_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeVec2Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec2Parameter.method_set_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeVec2Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_value_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeVec2Parameter.method_is_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_value")
        return withUnsafePointer(to: &VisualShaderNodeVec2Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value(_ value: Vector2) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec2Parameter.method_set_default_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_default_value")
        return withUnsafePointer(to: &VisualShaderNodeVec2Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_value() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(VisualShaderNodeVec2Parameter.method_get_default_value, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

