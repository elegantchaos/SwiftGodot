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

/// Class representing a planar ``PrimitiveMesh``.
/// 
/// Class representing a planar ``PrimitiveMesh``. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, change ``orientation`` to ``Orientation/z``.
/// 
/// > Note: When using a large textured ``PlaneMesh`` (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase ``subdivideDepth`` and ``subdivideWidth`` until you no longer notice UV jittering.
/// 
open class PlaneMesh: PrimitiveMesh {
    override open class var godotClassName: StringName { "PlaneMesh" }
    public enum Orientation: Int64, CaseIterable, CustomDebugStringConvertible {
        /// ``PlaneMesh`` will face the positive X-axis.
        case x = 0 // FACE_X
        /// ``PlaneMesh`` will face the positive Y-axis. This matches the behavior of the ``PlaneMesh`` in Godot 3.x.
        case y = 1 // FACE_Y
        /// ``PlaneMesh`` will face the positive Z-axis. This matches the behavior of the QuadMesh in Godot 3.x.
        case z = 2 // FACE_Z
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .x: return ".x"
                case .y: return ".y"
                case .z: return ".z"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Size of the generated plane.
    final public var size: Vector2 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// Number of subdivision along the X axis.
    final public var subdivideWidth: Int32 {
        get {
            return get_subdivide_width ()
        }
        
        set {
            set_subdivide_width (newValue)
        }
        
    }
    
    /// Number of subdivision along the Z axis.
    final public var subdivideDepth: Int32 {
        get {
            return get_subdivide_depth ()
        }
        
        set {
            set_subdivide_depth (newValue)
        }
        
    }
    
    /// Offset of the generated plane. Useful for particles.
    final public var centerOffset: Vector3 {
        get {
            return get_center_offset ()
        }
        
        set {
            set_center_offset (newValue)
        }
        
    }
    
    /// Direction that the ``PlaneMesh`` is facing. See ``PlaneMesh/Orientation`` for options.
    final public var orientation: PlaneMesh.Orientation {
        get {
            return get_orientation ()
        }
        
        set {
            set_orientation (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_size")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector2) {
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaneMesh.method_set_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_size")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PlaneMesh.method_get_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_subdivide_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_subdivide_width")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_width(_ subdivide: Int32) {
        withUnsafePointer(to: subdivide) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaneMesh.method_set_subdivide_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_subdivide_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_subdivide_width")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_width() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PlaneMesh.method_get_subdivide_width, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_subdivide_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_subdivide_depth")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_depth(_ subdivide: Int32) {
        withUnsafePointer(to: subdivide) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaneMesh.method_set_subdivide_depth, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_subdivide_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_subdivide_depth")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_depth() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PlaneMesh.method_get_subdivide_depth, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_center_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_center_offset")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_center_offset(_ offset: Vector3) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaneMesh.method_set_center_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_center_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_center_offset")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_offset() -> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PlaneMesh.method_get_center_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_orientation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_orientation")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2751399687)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_orientation(_ orientation: PlaneMesh.Orientation) {
        withUnsafePointer(to: orientation.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaneMesh.method_set_orientation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_orientation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_orientation")
        return withUnsafePointer(to: &PlaneMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227599250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_orientation() -> PlaneMesh.Orientation {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(PlaneMesh.method_get_orientation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return PlaneMesh.Orientation (rawValue: _result)!
    }
    
}
