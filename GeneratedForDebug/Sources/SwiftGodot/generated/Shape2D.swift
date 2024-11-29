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

/// Abstract base class for 2D shapes used for physics collision.
/// 
/// Abstract base class for all 2D shapes, intended for use in physics.
/// 
/// **Performance:** Primitive shapes, especially ``CircleShape2D``, are fast to check collisions against. ``ConvexPolygonShape2D`` is slower, and ``ConcavePolygonShape2D`` is the slowest.
/// 
open class Shape2D: Resource {
    override open class var godotClassName: StringName { "Shape2D" }
    
    /* Properties */
    
    /// The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.
    /// 
    /// When set to `0`, the default value from ``ProjectSettings/physics/2d/solver/defaultContactBias`` is used.
    /// 
    final public var customSolverBias: Double {
        get {
            return get_custom_solver_bias ()
        }
        
        set {
            set_custom_solver_bias (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_custom_solver_bias")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_solver_bias(_ bias: Double) {
        withUnsafePointer(to: bias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Shape2D.method_set_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_custom_solver_bias")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_solver_bias() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Shape2D.method_get_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_collide: GDExtensionMethodBindPtr = {
        let methodName = StringName("collide")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3709843132)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this shape is colliding with another.
    /// 
    /// This method needs the transformation matrix for this shape (`localXform`), the shape to check collisions with (`withShape`), and the transformation matrix of that shape (`shapeXform`).
    /// 
    public final func collide(localXform: Transform2D, withShape: Shape2D?, shapeXform: Transform2D) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: localXform) { pArg0 in
            withUnsafePointer(to: withShape?.handle) { pArg1 in
                withUnsafePointer(to: shapeXform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Shape2D.method_collide, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_collide_with_motion: GDExtensionMethodBindPtr = {
        let methodName = StringName("collide_with_motion")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2869556801)!
            }
            
        }
        
    }()
    
    /// Returns whether this shape would collide with another, if a given movement was applied.
    /// 
    /// This method needs the transformation matrix for this shape (`localXform`), the movement to test on this shape (`localMotion`), the shape to check collisions with (`withShape`), the transformation matrix of that shape (`shapeXform`), and the movement to test onto the other object (`shapeMotion`).
    /// 
    public final func collideWithMotion(localXform: Transform2D, localMotion: Vector2, withShape: Shape2D?, shapeXform: Transform2D, shapeMotion: Vector2) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: localXform) { pArg0 in
            withUnsafePointer(to: localMotion) { pArg1 in
                withUnsafePointer(to: withShape?.handle) { pArg2 in
                    withUnsafePointer(to: shapeXform) { pArg3 in
                        withUnsafePointer(to: shapeMotion) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Shape2D.method_collide_with_motion, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_collide_and_get_contacts: GDExtensionMethodBindPtr = {
        let methodName = StringName("collide_and_get_contacts")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3056932662)!
            }
            
        }
        
    }()
    
    /// Returns a list of contact point pairs where this shape touches another.
    /// 
    /// If there are no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of `withShape`.
    /// 
    /// A collision pair A, B can be used to calculate the collision normal with `(B - A).normalized()`, and the collision depth with `(B - A).length()`. This information is typically used to separate shapes, particularly in collision solvers.
    /// 
    /// This method needs the transformation matrix for this shape (`localXform`), the shape to check collisions with (`withShape`), and the transformation matrix of that shape (`shapeXform`).
    /// 
    public final func collideAndGetContacts(localXform: Transform2D, withShape: Shape2D?, shapeXform: Transform2D) -> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: localXform) { pArg0 in
            withUnsafePointer(to: withShape?.handle) { pArg1 in
                withUnsafePointer(to: shapeXform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Shape2D.method_collide_and_get_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_collide_with_motion_and_get_contacts: GDExtensionMethodBindPtr = {
        let methodName = StringName("collide_with_motion_and_get_contacts")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3620351573)!
            }
            
        }
        
    }()
    
    /// Returns a list of contact point pairs where this shape would touch another, if a given movement was applied.
    /// 
    /// If there would be no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of `withShape`.
    /// 
    /// A collision pair A, B can be used to calculate the collision normal with `(B - A).normalized()`, and the collision depth with `(B - A).length()`. This information is typically used to separate shapes, particularly in collision solvers.
    /// 
    /// This method needs the transformation matrix for this shape (`localXform`), the movement to test on this shape (`localMotion`), the shape to check collisions with (`withShape`), the transformation matrix of that shape (`shapeXform`), and the movement to test onto the other object (`shapeMotion`).
    /// 
    public final func collideWithMotionAndGetContacts(localXform: Transform2D, localMotion: Vector2, withShape: Shape2D?, shapeXform: Transform2D, shapeMotion: Vector2) -> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: localXform) { pArg0 in
            withUnsafePointer(to: localMotion) { pArg1 in
                withUnsafePointer(to: withShape?.handle) { pArg2 in
                    withUnsafePointer(to: shapeXform) { pArg3 in
                        withUnsafePointer(to: shapeMotion) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Shape2D.method_collide_with_motion_and_get_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_draw: GDExtensionMethodBindPtr = {
        let methodName = StringName("draw")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2948539648)!
            }
            
        }
        
    }()
    
    /// Draws a solid shape onto a ``CanvasItem`` with the ``RenderingServer`` API filled with the specified `color`. The exact drawing method is specific for each shape and cannot be configured.
    public final func draw(canvasItem: RID, color: Color) {
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Shape2D.method_draw, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rect")
        return withUnsafePointer(to: &Shape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// Returns a ``Rect2`` representing the shapes boundary.
    public final func getRect() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(Shape2D.method_get_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

