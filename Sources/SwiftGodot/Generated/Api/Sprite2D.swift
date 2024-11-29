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

/// General-purpose sprite node.
/// 
/// A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``frameChanged``
/// - ``textureChanged``
open class Sprite2D: Node2D {
    override open class var godotClassName: StringName { "Sprite2D" }
    
    /* Properties */
    
    /// ``Texture2D`` object to draw.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// If `true`, texture is centered.
    /// 
    /// > Note: For games with a pixel art aesthetic, textures may appear deformed when centered. This is caused by their position being between pixels. To prevent this, set this property to `false`, or consider enabling ``ProjectSettings/rendering/2d/snap/snap2dVerticesToPixel`` and ``ProjectSettings/rendering/2d/snap/snap2dTransformsToPixel``.
    /// 
    final public var centered: Bool {
        get {
            return is_centered ()
        }
        
        set {
            set_centered (newValue)
        }
        
    }
    
    /// The texture's drawing offset.
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// If `true`, texture is flipped horizontally.
    final public var flipH: Bool {
        get {
            return is_flipped_h ()
        }
        
        set {
            set_flip_h (newValue)
        }
        
    }
    
    /// If `true`, texture is flipped vertically.
    final public var flipV: Bool {
        get {
            return is_flipped_v ()
        }
        
        set {
            set_flip_v (newValue)
        }
        
    }
    
    /// The number of columns in the sprite sheet. When this property is changed, ``frame`` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, ``frame`` is reset to `0`.
    final public var hframes: Int32 {
        get {
            return get_hframes ()
        }
        
        set {
            set_hframes (newValue)
        }
        
    }
    
    /// The number of rows in the sprite sheet. When this property is changed, ``frame`` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, ``frame`` is reset to `0`.
    final public var vframes: Int32 {
        get {
            return get_vframes ()
        }
        
        set {
            set_vframes (newValue)
        }
        
    }
    
    /// Current frame to display from sprite sheet. ``hframes`` or ``vframes`` must be greater than 1. This property is automatically adjusted when ``hframes`` or ``vframes`` are changed to keep pointing to the same visual frame (same column and row). If that's impossible, this value is reset to `0`.
    final public var frame: Int32 {
        get {
            return get_frame ()
        }
        
        set {
            set_frame (newValue)
        }
        
    }
    
    /// Coordinates of the frame to display from sprite sheet. This is as an alias for the ``frame`` property. ``hframes`` or ``vframes`` must be greater than 1.
    final public var frameCoords: Vector2i {
        get {
            return get_frame_coords ()
        }
        
        set {
            set_frame_coords (newValue)
        }
        
    }
    
    /// If `true`, texture is cut from a larger atlas texture. See ``regionRect``.
    final public var regionEnabled: Bool {
        get {
            return is_region_enabled ()
        }
        
        set {
            set_region_enabled (newValue)
        }
        
    }
    
    /// The region of the atlas texture to display. ``regionEnabled`` must be `true`.
    final public var regionRect: Rect2 {
        get {
            return get_region_rect ()
        }
        
        set {
            set_region_rect (newValue)
        }
        
    }
    
    /// If `true`, the outermost pixels get blurred out. ``regionEnabled`` must be `true`.
    final public var regionFilterClipEnabled: Bool {
        get {
            return is_region_filter_clip_enabled ()
        }
        
        set {
            set_region_filter_clip_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Sprite2D.method_get_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_centered: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_centered")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_centered(_ centered: Bool) {
        withUnsafePointer(to: centered) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_centered, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_centered: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_centered")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_centered() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Sprite2D.method_is_centered, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_offset")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_offset")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Sprite2D.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_flip_h: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flip_h")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_h(_ flipH: Bool) {
        withUnsafePointer(to: flipH) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_flip_h, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_flipped_h: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_flipped_h")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_h() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Sprite2D.method_is_flipped_h, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_flip_v: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flip_v")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_v(_ flipV: Bool) {
        withUnsafePointer(to: flipV) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_flip_v, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_flipped_v: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_flipped_v")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_v() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Sprite2D.method_is_flipped_v, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_region_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_region_enabled")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_region_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_region_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_region_enabled")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_region_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Sprite2D.method_is_region_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_pixel_opaque: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_pixel_opaque")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 556197845)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if the pixel at the given position is opaque and `false` in other case. The position is in local coordinates.
    /// 
    /// > Note: It also returns `false`, if the sprite's texture is `null` or if the given position is invalid.
    /// 
    public final func isPixelOpaque(pos: Vector2) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: pos) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_is_pixel_opaque, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_region_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_region_rect")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region_rect(_ rect: Rect2) {
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_region_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_region_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_region_rect")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_region_rect() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(Sprite2D.method_get_region_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_region_filter_clip_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_region_filter_clip_enabled")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region_filter_clip_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_region_filter_clip_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_region_filter_clip_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_region_filter_clip_enabled")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_region_filter_clip_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Sprite2D.method_is_region_filter_clip_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_frame")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frame(_ frame: Int32) {
        withUnsafePointer(to: frame) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_frame, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_frame")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frame() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Sprite2D.method_get_frame, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_frame_coords: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_frame_coords")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frame_coords(_ coords: Vector2i) {
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_frame_coords, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_frame_coords: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_frame_coords")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frame_coords() -> Vector2i {
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(Sprite2D.method_get_frame_coords, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_vframes: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_vframes")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vframes(_ vframes: Int32) {
        withUnsafePointer(to: vframes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_vframes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_vframes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_vframes")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vframes() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Sprite2D.method_get_vframes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_hframes: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_hframes")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hframes(_ hframes: Int32) {
        withUnsafePointer(to: hframes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Sprite2D.method_set_hframes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_hframes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_hframes")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_hframes() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Sprite2D.method_get_hframes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rect")
        return withUnsafePointer(to: &Sprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// Returns a ``Rect2`` representing the Sprite2D's boundary in local coordinates. Can be used to detect if the Sprite2D was clicked.
    /// 
    /// **Example:**
    /// 
    public final func getRect() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(Sprite2D.method_get_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the ``frame`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.frameChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var frameChanged: SimpleSignal { SimpleSignal (target: self, signalName: "frame_changed") }
    
    /// Emitted when the ``texture`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textureChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var textureChanged: SimpleSignal { SimpleSignal (target: self, signalName: "texture_changed") }
    
}

