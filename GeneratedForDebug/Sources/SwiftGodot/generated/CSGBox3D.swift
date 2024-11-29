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

/// A CSG Box shape.
/// 
/// This node allows you to create a box for use with the CSG system.
/// 
/// > Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a ``MeshInstance3D`` with a ``PrimitiveMesh``. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
/// 
open class CSGBox3D: CSGPrimitive3D {
    override open class var godotClassName: StringName { "CSGBox3D" }
    
    /* Properties */
    
    /// The box's width, height and depth.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// The material used to render the box.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_size")
        return withUnsafePointer(to: &CSGBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector3) {
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGBox3D.method_set_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_size")
        return withUnsafePointer(to: &CSGBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(CSGBox3D.method_get_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_material")
        return withUnsafePointer(to: &CSGBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material(_ material: Material?) {
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGBox3D.method_set_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_material")
        return withUnsafePointer(to: &CSGBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGBox3D.method_get_material, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

