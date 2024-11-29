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

/// Abstract base class for all 2D physics joints.
/// 
/// Abstract base class for all joints in 2D physics. 2D joints bind together two physics bodies (``nodeA`` and ``nodeB``) and apply a constraint.
open class Joint2D: Node2D {
    override open class var godotClassName: StringName { "Joint2D" }
    
    /* Properties */
    
    /// Path to the first body (A) attached to the joint. The node must inherit ``PhysicsBody2D``.
    final public var nodeA: NodePath {
        get {
            return get_node_a ()
        }
        
        set {
            set_node_a (newValue)
        }
        
    }
    
    /// Path to the second body (B) attached to the joint. The node must inherit ``PhysicsBody2D``.
    final public var nodeB: NodePath {
        get {
            return get_node_b ()
        }
        
        set {
            set_node_b (newValue)
        }
        
    }
    
    /// When ``nodeA`` and ``nodeB`` move in different directions the ``bias`` controls how fast the joint pulls them back to their original position. The lower the ``bias`` the more the two bodies can pull on the joint.
    /// 
    /// When set to `0`, the default value from ``ProjectSettings/physics/2d/solver/defaultConstraintBias`` is used.
    /// 
    final public var bias: Double {
        get {
            return get_bias ()
        }
        
        set {
            set_bias (newValue)
        }
        
    }
    
    /// If `true`, the two bodies bound together do not collide with each other.
    final public var disableCollision: Bool {
        get {
            return get_exclude_nodes_from_collision ()
        }
        
        set {
            set_exclude_nodes_from_collision (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_node_a: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_node_a")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_node_a(_ node: NodePath) {
        withUnsafePointer(to: node.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Joint2D.method_set_node_a, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_node_a: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node_a")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_node_a() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Joint2D.method_get_node_a, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_node_b: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_node_b")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_node_b(_ node: NodePath) {
        withUnsafePointer(to: node.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Joint2D.method_set_node_b, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_node_b: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node_b")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_node_b() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Joint2D.method_get_node_b, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_bias")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bias(_ bias: Double) {
        withUnsafePointer(to: bias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Joint2D.method_set_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_bias")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bias() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Joint2D.method_get_bias, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_exclude_nodes_from_collision")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_nodes_from_collision(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Joint2D.method_set_exclude_nodes_from_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_exclude_nodes_from_collision")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_nodes_from_collision() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Joint2D.method_get_exclude_nodes_from_collision, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rid")
        return withUnsafePointer(to: &Joint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the joint's internal ``RID`` from the ``PhysicsServer2D``.
    public final func getRid() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(Joint2D.method_get_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

