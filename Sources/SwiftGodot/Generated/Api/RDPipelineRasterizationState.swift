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

/// Pipeline rasterization state (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDPipelineRasterizationState: RefCounted {
    override open class var godotClassName: StringName { "RDPipelineRasterizationState" }
    
    /* Properties */
    
    /// If `true`, clamps depth values according to the minimum and maximum depth of the associated viewport.
    final public var enableDepthClamp: Bool {
        get {
            return get_enable_depth_clamp ()
        }
        
        set {
            set_enable_depth_clamp (newValue)
        }
        
    }
    
    /// If `true`, primitives are discarded immediately before the rasterization stage.
    final public var discardPrimitives: Bool {
        get {
            return get_discard_primitives ()
        }
        
        set {
            set_discard_primitives (newValue)
        }
        
    }
    
    /// If `true`, performs wireframe rendering for triangles instead of flat or textured rendering.
    final public var wireframe: Bool {
        get {
            return get_wireframe ()
        }
        
        set {
            set_wireframe (newValue)
        }
        
    }
    
    /// The cull mode to use when drawing polygons, which determines whether front faces or backfaces are hidden.
    final public var cullMode: RenderingDevice.PolygonCullMode {
        get {
            return get_cull_mode ()
        }
        
        set {
            set_cull_mode (newValue)
        }
        
    }
    
    /// The winding order to use to determine which face of a triangle is considered its front face.
    final public var frontFace: RenderingDevice.PolygonFrontFace {
        get {
            return get_front_face ()
        }
        
        set {
            set_front_face (newValue)
        }
        
    }
    
    /// If `true`, each generated depth value will by offset by some amount. The specific amount is generated per polygon based on the values of ``depthBiasSlopeFactor`` and ``depthBiasConstantFactor``.
    final public var depthBiasEnabled: Bool {
        get {
            return get_depth_bias_enabled ()
        }
        
        set {
            set_depth_bias_enabled (newValue)
        }
        
    }
    
    /// A constant offset added to each depth value. Applied after ``depthBiasSlopeFactor``.
    final public var depthBiasConstantFactor: Double {
        get {
            return get_depth_bias_constant_factor ()
        }
        
        set {
            set_depth_bias_constant_factor (newValue)
        }
        
    }
    
    /// A limit for how much each depth value can be offset. If negative, it serves as a minimum value, but if positive, it serves as a maximum value.
    final public var depthBiasClamp: Double {
        get {
            return get_depth_bias_clamp ()
        }
        
        set {
            set_depth_bias_clamp (newValue)
        }
        
    }
    
    /// A constant scale applied to the slope of each polygons' depth. Applied before ``depthBiasConstantFactor``.
    final public var depthBiasSlopeFactor: Double {
        get {
            return get_depth_bias_slope_factor ()
        }
        
        set {
            set_depth_bias_slope_factor (newValue)
        }
        
    }
    
    /// The line width to use when drawing lines (in pixels). Thick lines may not be supported on all hardware.
    final public var lineWidth: Double {
        get {
            return get_line_width ()
        }
        
        set {
            set_line_width (newValue)
        }
        
    }
    
    /// The number of control points to use when drawing a patch with tessellation enabled. Higher values result in higher quality at the cost of performance.
    final public var patchControlPoints: UInt32 {
        get {
            return get_patch_control_points ()
        }
        
        set {
            set_patch_control_points (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enable_depth_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_enable_depth_clamp")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_depth_clamp(_ pMember: Bool) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_enable_depth_clamp, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_enable_depth_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_enable_depth_clamp")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_depth_clamp() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_enable_depth_clamp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_discard_primitives: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_discard_primitives")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_discard_primitives(_ pMember: Bool) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_discard_primitives, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_discard_primitives: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_discard_primitives")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_discard_primitives() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_discard_primitives, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_wireframe: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_wireframe")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wireframe(_ pMember: Bool) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_wireframe, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_wireframe: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_wireframe")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wireframe() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_wireframe, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cull_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_cull_mode")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2662586502)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cull_mode(_ pMember: RenderingDevice.PolygonCullMode) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_cull_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_cull_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_cull_mode")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2192484313)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cull_mode() -> RenderingDevice.PolygonCullMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_cull_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.PolygonCullMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_front_face: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_front_face")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2637251213)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_front_face(_ pMember: RenderingDevice.PolygonFrontFace) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_front_face, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_front_face: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_front_face")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 708793786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_front_face() -> RenderingDevice.PolygonFrontFace {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_front_face, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.PolygonFrontFace (rawValue: _result)!
    }
    
    fileprivate static var method_set_depth_bias_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth_bias_enabled")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_enabled(_ pMember: Bool) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_depth_bias_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth_bias_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth_bias_enabled")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_depth_bias_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth_bias_constant_factor")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_constant_factor(_ pMember: Double) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_depth_bias_constant_factor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth_bias_constant_factor")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_constant_factor() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_depth_bias_constant_factor, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth_bias_clamp")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_clamp(_ pMember: Double) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_depth_bias_clamp, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth_bias_clamp: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth_bias_clamp")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_clamp() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_depth_bias_clamp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth_bias_slope_factor")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_bias_slope_factor(_ pMember: Double) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_depth_bias_slope_factor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth_bias_slope_factor")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_bias_slope_factor() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_depth_bias_slope_factor, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_line_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_line_width")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_width(_ pMember: Double) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_line_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_line_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_line_width")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_width() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_line_width, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_patch_control_points: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_patch_control_points")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_patch_control_points(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_set_patch_control_points, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_patch_control_points: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_patch_control_points")
        return withUnsafePointer(to: &RDPipelineRasterizationState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_patch_control_points() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDPipelineRasterizationState.method_get_patch_control_points, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

