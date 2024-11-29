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

/// A node that provides a ``Shape2D`` to a ``CollisionObject2D`` parent.
/// 
/// A node that provides a ``Shape2D`` to a ``CollisionObject2D`` parent and allows to edit it. This can give a detection shape to an ``Area2D`` or turn a ``PhysicsBody2D`` into a solid object.
open class CollisionShape2D: Node2D {
    override open class var godotClassName: StringName { "CollisionShape2D" }
    
    /* Properties */
    
    /// The actual shape owned by this collision shape.
    final public var shape: Shape2D? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// A disabled collision shape has no effect in the world. This property should be changed with ``Object/setDeferred(property:value:)``.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// Sets whether this collision shape should only detect collision on one side (top or bottom).
    /// 
    /// > Note: This property has no effect if this ``CollisionShape2D`` is a child of an ``Area2D`` node.
    /// 
    final public var oneWayCollision: Bool {
        get {
            return is_one_way_collision_enabled ()
        }
        
        set {
            set_one_way_collision (newValue)
        }
        
    }
    
    /// The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the shape at a high velocity.
    final public var oneWayCollisionMargin: Double {
        get {
            return get_one_way_collision_margin ()
        }
        
        set {
            set_one_way_collision_margin (newValue)
        }
        
    }
    
    /// The collision shape debug color.
    /// 
    /// > Note: The default value is ``ProjectSettings/debug/shapes/collision/shapeColor``. The `Color(0, 0, 0, 1)` value documented here is a placeholder, and not the actual default debug color.
    /// 
    final public var debugColor: Color {
        get {
            return get_debug_color ()
        }
        
        set {
            set_debug_color (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_shape")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 771364740)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Shape2D?) {
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_shape")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 522005891)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Shape2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_disabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_disabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape2D.method_is_disabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_one_way_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_one_way_collision")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_one_way_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_one_way_collision_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_one_way_collision_enabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_one_way_collision_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape2D.method_is_one_way_collision_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_one_way_collision_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_one_way_collision_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_one_way_collision_margin() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_debug_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_debug_color")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_debug_color(_ color: Color) {
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_debug_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_debug_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_debug_color")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_color() -> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_debug_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
