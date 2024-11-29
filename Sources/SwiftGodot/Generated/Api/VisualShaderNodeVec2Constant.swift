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

/// A ``Vector2`` constant to be used within the visual shader graph.
/// 
/// A constant ``Vector2``, which can be used as an input node.
open class VisualShaderNodeVec2Constant: VisualShaderNodeConstant {
    override open class var godotClassName: StringName { "VisualShaderNodeVec2Constant" }
    
    /* Properties */
    
    /// A ``Vector2`` constant which represents the state of this node.
    final public var constant: Vector2 {
        get {
            return get_constant ()
        }
        
        set {
            set_constant (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_constant")
        return withUnsafePointer(to: &VisualShaderNodeVec2Constant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Vector2) {
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec2Constant.method_set_constant, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeVec2Constant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(VisualShaderNodeVec2Constant.method_get_constant, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

