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

/// Contains a ``Curve2D`` path for ``PathFollow2D`` nodes to follow.
/// 
/// Can have ``PathFollow2D`` child nodes moving along the ``Curve2D``. See ``PathFollow2D`` for more information on usage.
/// 
/// > Note: The path is considered as relative to the moved nodes (children of ``PathFollow2D``). As such, the curve should usually start with a zero vector (`(0, 0)`).
/// 
open class Path2D: Node2D {
    override open class var godotClassName: StringName { "Path2D" }
    
    /* Properties */
    
    /// A ``Curve2D`` describing the path.
    final public var curve: Curve2D? {
        get {
            return get_curve ()
        }
        
        set {
            set_curve (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_curve")
        return withUnsafePointer(to: &Path2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659985499)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve(_ curve: Curve2D?) {
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Path2D.method_set_curve, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_curve")
        return withUnsafePointer(to: &Path2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 660369445)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve() -> Curve2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Path2D.method_get_curve, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

