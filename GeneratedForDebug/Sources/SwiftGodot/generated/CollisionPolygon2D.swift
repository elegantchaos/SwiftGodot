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

/// A node that provides a polygon shape to a ``CollisionObject2D`` parent.
/// 
/// A node that provides a polygon shape to a ``CollisionObject2D`` parent and allows to edit it. The polygon can be concave or convex. This can give a detection shape to an ``Area2D``, turn ``PhysicsBody2D`` into a solid object, or give a hollow shape to a ``StaticBody2D``.
/// 
/// > Warning: A non-uniformly scaled ``CollisionShape2D`` will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its shape resource instead.
/// 
open class CollisionPolygon2D: Node2D {
    override open class var godotClassName: StringName { "CollisionPolygon2D" }
    public enum BuildMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Collisions will include the polygon and its contained area. In this mode the node has the same effect as several ``ConvexPolygonShape2D`` nodes, one for each convex shape in the convex decomposition of the polygon (but without the overhead of multiple nodes).
        case solids = 0 // BUILD_SOLIDS
        /// Collisions will only include the polygon edges. In this mode the node has the same effect as a single ``ConcavePolygonShape2D`` made of segments, with the restriction that each segment (after the first one) starts where the previous one ends, and the last one ends where the first one starts (forming a closed but hollow polygon).
        case segments = 1 // BUILD_SEGMENTS
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .solids: return ".solids"
                case .segments: return ".segments"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Collision build mode. Use one of the ``CollisionPolygon2D/BuildMode`` constants.
    final public var buildMode: CollisionPolygon2D.BuildMode {
        get {
            return get_build_mode ()
        }
        
        set {
            set_build_mode (newValue)
        }
        
    }
    
    /// The polygon's list of vertices. Each point will be connected to the next, and the final point will be connected to the first.
    /// 
    /// > Note: The returned vertices are in the local coordinate space of the given ``CollisionPolygon2D``.
    /// 
    final public var polygon: PackedVector2Array {
        get {
            return get_polygon ()
        }
        
        set {
            set_polygon (newValue)
        }
        
    }
    
    /// If `true`, no collisions will be detected.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// If `true`, only edges that face up, relative to ``CollisionPolygon2D``'s rotation, will collide with other objects.
    /// 
    /// > Note: This property has no effect if this ``CollisionPolygon2D`` is a child of an ``Area2D`` node.
    /// 
    final public var oneWayCollision: Bool {
        get {
            return is_one_way_collision_enabled ()
        }
        
        set {
            set_one_way_collision (newValue)
        }
        
    }
    
    /// The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the polygon at a high velocity.
    final public var oneWayCollisionMargin: Double {
        get {
            return get_one_way_collision_margin ()
        }
        
        set {
            set_one_way_collision_margin (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_polygon")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polygon(_ polygon: PackedVector2Array) {
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionPolygon2D.method_set_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_polygon")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygon() -> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(CollisionPolygon2D.method_get_polygon, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_build_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_build_mode")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2780803135)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_build_mode(_ buildMode: CollisionPolygon2D.BuildMode) {
        withUnsafePointer(to: buildMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionPolygon2D.method_set_build_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_build_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_build_mode")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3044948800)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_build_mode() -> CollisionPolygon2D.BuildMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CollisionPolygon2D.method_get_build_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CollisionPolygon2D.BuildMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_disabled")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled(_ disabled: Bool) {
        withUnsafePointer(to: disabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionPolygon2D.method_set_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_disabled")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionPolygon2D.method_is_disabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_one_way_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_one_way_collision")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_way_collision(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionPolygon2D.method_set_one_way_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_one_way_collision_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_one_way_collision_enabled")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_one_way_collision_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionPolygon2D.method_is_one_way_collision_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_one_way_collision_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_way_collision_margin(_ margin: Double) {
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionPolygon2D.method_set_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_one_way_collision_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_one_way_collision_margin() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CollisionPolygon2D.method_get_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

