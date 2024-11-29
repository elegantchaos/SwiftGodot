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

/// A set of ``AnimationRootNode``s placed on 2D coordinates, crossfading between the three adjacent ones. Used by ``AnimationTree``.
/// 
/// A resource used by ``AnimationNodeBlendTree``.
/// 
/// ``AnimationNodeBlendSpace1D`` represents a virtual 2D space on which ``AnimationRootNode``s are placed. Outputs the linear blend of the three adjacent animations using a ``Vector2`` weight. Adjacent in this context means the three ``AnimationRootNode``s making up the triangle that contains the current value.
/// 
/// You can add vertices to the blend space with ``addBlendPoint(node:pos:atIndex:)`` and automatically triangulate it by setting ``autoTriangles`` to `true`. Otherwise, use ``addTriangle(x:y:z:atIndex:)`` and ``removeTriangle(_:)`` to triangulate the blend space by hand.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``trianglesUpdated``
open class AnimationNodeBlendSpace2D: AnimationRootNode {
    override open class var godotClassName: StringName { "AnimationNodeBlendSpace2D" }
    public enum BlendMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The interpolation between animations is linear.
        case interpolated = 0 // BLEND_MODE_INTERPOLATED
        /// The blend space plays the animation of the animation node which blending position is closest to. Useful for frame-by-frame 2D animations.
        case discrete = 1 // BLEND_MODE_DISCRETE
        /// Similar to ``BlendMode/discrete``, but starts the new animation at the last animation's playback position.
        case discreteCarry = 2 // BLEND_MODE_DISCRETE_CARRY
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .interpolated: return ".interpolated"
                case .discrete: return ".discrete"
                case .discreteCarry: return ".discreteCarry"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// If `true`, the blend space is triangulated automatically. The mesh updates every time you add or remove points with ``addBlendPoint(node:pos:atIndex:)`` and ``removeBlendPoint(_:)``.
    final public var autoTriangles: Bool {
        get {
            return get_auto_triangles ()
        }
        
        set {
            set_auto_triangles (newValue)
        }
        
    }
    
    /// The blend space's X and Y axes' lower limit for the points' position. See ``addBlendPoint(node:pos:atIndex:)``.
    final public var minSpace: Vector2 {
        get {
            return get_min_space ()
        }
        
        set {
            set_min_space (newValue)
        }
        
    }
    
    /// The blend space's X and Y axes' upper limit for the points' position. See ``addBlendPoint(node:pos:atIndex:)``.
    final public var maxSpace: Vector2 {
        get {
            return get_max_space ()
        }
        
        set {
            set_max_space (newValue)
        }
        
    }
    
    /// Position increment to snap to when moving a point.
    final public var snap: Vector2 {
        get {
            return get_snap ()
        }
        
        set {
            set_snap (newValue)
        }
        
    }
    
    /// Name of the blend space's X axis.
    final public var xLabel: String {
        get {
            return get_x_label ()
        }
        
        set {
            set_x_label (newValue)
        }
        
    }
    
    /// Name of the blend space's Y axis.
    final public var yLabel: String {
        get {
            return get_y_label ()
        }
        
        set {
            set_y_label (newValue)
        }
        
    }
    
    /// Controls the interpolation between animations. See ``AnimationNodeBlendSpace2D/BlendMode`` constants.
    final public var blendMode: AnimationNodeBlendSpace2D.BlendMode {
        get {
            return get_blend_mode ()
        }
        
        set {
            set_blend_mode (newValue)
        }
        
    }
    
    /// If `false`, the blended animations' frame are stopped when the blend value is `0`.
    /// 
    /// If `true`, forcing the blended animations to advance frame.
    /// 
    final public var sync: Bool {
        get {
            return is_using_sync ()
        }
        
        set {
            set_use_sync (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_blend_point: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_blend_point")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402261981)!
            }
            
        }
        
    }()
    
    /// Adds a new point that represents a `node` at the position set by `pos`. You can insert it at a specific index using the `atIndex` argument. If you use the default value for `atIndex`, the point is inserted at the end of the blend points array.
    public final func addBlendPoint(node: AnimationRootNode?, pos: Vector2, atIndex: Int32 = -1) {
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: atIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_add_blend_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_blend_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_point_position")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Updates the position of the point at index `point` on the blend axis.
    public final func setBlendPointPosition(point: Int32, pos: Vector2) {
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_blend_point_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_point_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_point_position")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the position of the point at index `point`.
    public final func getBlendPointPosition(point: Int32) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_blend_point_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_blend_point_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_point_node")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4240341528)!
            }
            
        }
        
    }()
    
    /// Changes the ``AnimationNode`` referenced by the point at index `point`.
    public final func setBlendPointNode(point: Int32, node: AnimationRootNode?) {
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: node?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_blend_point_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_point_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_point_node")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 665599029)!
            }
            
        }
        
    }()
    
    /// Returns the ``AnimationRootNode`` referenced by the point at index `point`.
    public final func getBlendPointNode(point: Int32) -> AnimationRootNode? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_blend_point_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_remove_blend_point: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_blend_point")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the point at index `point` from the blend space.
    public final func removeBlendPoint(_ point: Int32) {
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_remove_blend_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_point_count")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of points in the blend space.
    public final func getBlendPointCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_blend_point_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_triangle: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_triangle")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 753017335)!
            }
            
        }
        
    }()
    
    /// Creates a new triangle using three points `x`, `y`, and `z`. Triangles can overlap. You can insert the triangle at a specific index using the `atIndex` argument. If you use the default value for `atIndex`, the point is inserted at the end of the blend points array.
    public final func addTriangle(x: Int32, y: Int32, z: Int32, atIndex: Int32 = -1) {
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: z) { pArg2 in
                    withUnsafePointer(to: atIndex) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_add_triangle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_triangle_point: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_triangle_point")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 50157827)!
            }
            
        }
        
    }()
    
    /// Returns the position of the point at index `point` in the triangle of index `triangle`.
    public final func getTrianglePoint(triangle: Int32, point: Int32) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: triangle) { pArg0 in
            withUnsafePointer(to: point) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_triangle_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_remove_triangle: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_triangle")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the triangle at index `triangle` from the blend space.
    public final func removeTriangle(_ triangle: Int32) {
        withUnsafePointer(to: triangle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_remove_triangle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_triangle_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_triangle_count")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of triangles in the blend space.
    public final func getTriangleCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_triangle_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_min_space: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_min_space")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min_space(_ minSpace: Vector2) {
        withUnsafePointer(to: minSpace) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_min_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_min_space: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_min_space")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min_space() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_min_space, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_space: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_max_space")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_space(_ maxSpace: Vector2) {
        withUnsafePointer(to: maxSpace) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_max_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_max_space: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_max_space")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_space() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_max_space, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_snap: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_snap")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_snap(_ snap: Vector2) {
        withUnsafePointer(to: snap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_snap, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_snap: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_snap")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_snap() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_snap, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_x_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_x_label")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_x_label(_ text: String) {
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_x_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_x_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_x_label")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_x_label() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_x_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_y_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_y_label")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_y_label(_ text: String) {
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_y_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_y_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_y_label")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_y_label() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_y_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_auto_triangles: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_auto_triangles")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_triangles(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_auto_triangles, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_auto_triangles: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_auto_triangles")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_triangles() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_auto_triangles, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_mode")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 81193520)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_mode(_ mode: AnimationNodeBlendSpace2D.BlendMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_blend_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_mode")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1398433632)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_mode() -> AnimationNodeBlendSpace2D.BlendMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_get_blend_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationNodeBlendSpace2D.BlendMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_use_sync: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_sync")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_sync(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_set_use_sync, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_using_sync: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_using_sync")
        return withUnsafePointer(to: &AnimationNodeBlendSpace2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_sync() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeBlendSpace2D.method_is_using_sync, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted every time the blend space's triangles are created, removed, or when one of their vertices changes position.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.trianglesUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var trianglesUpdated: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "triangles_updated") }
    
}

