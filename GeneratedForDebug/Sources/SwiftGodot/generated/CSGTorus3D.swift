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

/// A CSG Torus shape.
/// 
/// This node allows you to create a torus for use with the CSG system.
/// 
/// > Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a ``MeshInstance3D`` with a ``PrimitiveMesh``. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
/// 
open class CSGTorus3D: CSGPrimitive3D {
    override open class var godotClassName: StringName { "CSGTorus3D" }
    
    /* Properties */
    
    /// The inner radius of the torus.
    final public var innerRadius: Double {
        get {
            return get_inner_radius ()
        }
        
        set {
            set_inner_radius (newValue)
        }
        
    }
    
    /// The outer radius of the torus.
    final public var outerRadius: Double {
        get {
            return get_outer_radius ()
        }
        
        set {
            set_outer_radius (newValue)
        }
        
    }
    
    /// The number of slices the torus is constructed of.
    final public var sides: Int32 {
        get {
            return get_sides ()
        }
        
        set {
            set_sides (newValue)
        }
        
    }
    
    /// The number of edges each ring of the torus is constructed of.
    final public var ringSides: Int32 {
        get {
            return get_ring_sides ()
        }
        
        set {
            set_ring_sides (newValue)
        }
        
    }
    
    /// If `true` the normals of the torus are set to give a smooth effect making the torus seem rounded. If `false` the torus will have a flat shaded look.
    final public var smoothFaces: Bool {
        get {
            return get_smooth_faces ()
        }
        
        set {
            set_smooth_faces (newValue)
        }
        
    }
    
    /// The material used to render the torus.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_inner_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_inner_radius")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inner_radius(_ radius: Double) {
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_inner_radius, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_inner_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_inner_radius")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inner_radius() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_inner_radius, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_outer_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_outer_radius")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outer_radius(_ radius: Double) {
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_outer_radius, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_outer_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_outer_radius")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outer_radius() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_outer_radius, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sides: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_sides")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sides(_ sides: Int32) {
        withUnsafePointer(to: sides) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_sides, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_sides: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_sides")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sides() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_sides, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ring_sides: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ring_sides")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ring_sides(_ sides: Int32) {
        withUnsafePointer(to: sides) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_ring_sides, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_ring_sides: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ring_sides")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ring_sides() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_ring_sides, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_material")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_material")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_material, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_smooth_faces: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_smooth_faces")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_smooth_faces(_ smoothFaces: Bool) {
        withUnsafePointer(to: smoothFaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGTorus3D.method_set_smooth_faces, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_smooth_faces: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_smooth_faces")
        return withUnsafePointer(to: &CSGTorus3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_smooth_faces() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGTorus3D.method_get_smooth_faces, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

