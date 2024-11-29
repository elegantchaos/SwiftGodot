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

/// Computes a ``Transform3D`` function within the visual shader graph.
/// 
/// Computes an inverse or transpose function on the provided ``Transform3D``.
open class VisualShaderNodeTransformFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeTransformFunc" }
    public enum Function: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Perform the inverse operation on the ``Transform3D`` matrix.
        case inverse = 0 // FUNC_INVERSE
        /// Perform the transpose operation on the ``Transform3D`` matrix.
        case transpose = 1 // FUNC_TRANSPOSE
        /// Represents the size of the ``VisualShaderNodeTransformFunc/Function`` enum.
        case max = 2 // FUNC_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .inverse: return ".inverse"
                case .transpose: return ".transpose"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The function to be computed. See ``VisualShaderNodeTransformFunc/Function`` for options.
    final public var function: VisualShaderNodeTransformFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_function")
        return withUnsafePointer(to: &VisualShaderNodeTransformFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2900990409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function(_ `func`: VisualShaderNodeTransformFunc.Function) {
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeTransformFunc.method_set_function, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_function")
        return withUnsafePointer(to: &VisualShaderNodeTransformFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2839926569)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function() -> VisualShaderNodeTransformFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeTransformFunc.method_get_function, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeTransformFunc.Function (rawValue: _result)!
    }
    
}

