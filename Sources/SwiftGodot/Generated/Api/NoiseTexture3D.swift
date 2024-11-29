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

/// A 3D texture filled with noise generated by a ``Noise`` object.
/// 
/// Uses the ``FastNoiseLite`` library or other noise generators to fill the texture data of your desired size.
/// 
/// The class uses ``Thread``s to generate the texture data internally, so ``Texture3D/getData()`` may return `null` if the generation process has not completed yet. In that case, you need to wait for the texture to be generated before accessing the image:
/// 
open class NoiseTexture3D: Texture3D {
    override open class var godotClassName: StringName { "NoiseTexture3D" }
    
    /* Properties */
    
    /// Width of the generated texture (in pixels).
    final public var width: Int32 {
        get {
            return getWidth ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// Height of the generated texture (in pixels).
    final public var height: Int32 {
        get {
            return getHeight ()
        }
        
        set {
            set_height (newValue)
        }
        
    }
    
    /// Depth of the generated texture (in pixels).
    final public var depth: Int32 {
        get {
            return getDepth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /// If `true`, inverts the noise texture. White becomes black, black becomes white.
    final public var invert: Bool {
        get {
            return get_invert ()
        }
        
        set {
            set_invert (newValue)
        }
        
    }
    
    /// If `true`, a seamless texture is requested from the ``Noise`` resource.
    /// 
    /// > Note: Seamless noise textures may take longer to generate and/or can have a lower contrast compared to non-seamless noise depending on the used ``Noise`` resource. This is because some implementations use higher dimensions for generating seamless noise.
    /// 
    /// > Note: The default ``FastNoiseLite`` implementation uses the fallback path for seamless generation. If using a ``width``, ``height`` or ``depth`` lower than the default, you may need to increase ``seamlessBlendSkirt`` to make seamless blending more effective.
    /// 
    final public var seamless: Bool {
        get {
            return get_seamless ()
        }
        
        set {
            set_seamless (newValue)
        }
        
    }
    
    /// Used for the default/fallback implementation of the seamless texture generation. It determines the distance over which the seams are blended. High values may result in less details and contrast. See ``Noise`` for further details.
    /// 
    /// > Note: If using a ``width``, ``height`` or ``depth`` lower than the default, you may need to increase ``seamlessBlendSkirt`` to make seamless blending more effective.
    /// 
    final public var seamlessBlendSkirt: Double {
        get {
            return get_seamless_blend_skirt ()
        }
        
        set {
            set_seamless_blend_skirt (newValue)
        }
        
    }
    
    /// If `true`, the noise image coming from the noise generator is normalized to the range `0.0` to `1.0`.
    /// 
    /// Turning normalization off can affect the contrast and allows you to generate non repeating tileable noise textures.
    /// 
    final public var normalize: Bool {
        get {
            return is_normalized ()
        }
        
        set {
            set_normalize (newValue)
        }
        
    }
    
    /// A ``Gradient`` which is used to map the luminance of each pixel to a color value.
    final public var colorRamp: Gradient? {
        get {
            return get_color_ramp ()
        }
        
        set {
            set_color_ramp (newValue)
        }
        
    }
    
    /// The instance of the ``Noise`` object.
    final public var noise: Noise? {
        get {
            return get_noise ()
        }
        
        set {
            set_noise (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_width")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width(_ width: Int32) {
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_height: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_height")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height(_ height: Int32) {
        withUnsafePointer(to: height) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_height, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth(_ depth: Int32) {
        withUnsafePointer(to: depth) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_depth, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_invert: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_invert")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_invert(_ invert: Bool) {
        withUnsafePointer(to: invert) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_invert, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_invert: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_invert")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_invert() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_get_invert, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_seamless: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_seamless")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_seamless(_ seamless: Bool) {
        withUnsafePointer(to: seamless) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_seamless, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_seamless: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_seamless")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_seamless() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_get_seamless, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_seamless_blend_skirt: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_seamless_blend_skirt")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_seamless_blend_skirt(_ seamlessBlendSkirt: Double) {
        withUnsafePointer(to: seamlessBlendSkirt) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_seamless_blend_skirt, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_seamless_blend_skirt: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_seamless_blend_skirt")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_seamless_blend_skirt() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_get_seamless_blend_skirt, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_normalize: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_normalize")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normalize(_ normalize: Bool) {
        withUnsafePointer(to: normalize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_normalize, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_normalized: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_normalized")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_normalized() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_is_normalized, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_color_ramp: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_color_ramp")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2756054477)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_ramp(_ gradient: Gradient?) {
        withUnsafePointer(to: gradient?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_color_ramp, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_color_ramp: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_color_ramp")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132272999)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_ramp() -> Gradient? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_get_color_ramp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_noise: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_noise")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4135492439)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_noise(_ noise: Noise?) {
        withUnsafePointer(to: noise?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NoiseTexture3D.method_set_noise, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_noise: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise")
        return withUnsafePointer(to: &NoiseTexture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 185851837)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_noise() -> Noise? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(NoiseTexture3D.method_get_noise, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

