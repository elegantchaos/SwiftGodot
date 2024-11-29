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

/// Sprite node that contains multiple textures as frames to play for animation.
/// 
/// ``AnimatedSprite2D`` is similar to the ``Sprite2D`` node, except it carries multiple textures as animation frames. Animations are created using a ``SpriteFrames`` resource, which allows you to import image files (or a folder containing said files) to provide the animation frames for the sprite. The ``SpriteFrames`` resource can be configured in the editor via the SpriteFrames bottom panel.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``spriteFramesChanged``
/// - ``animationChanged``
/// - ``frameChanged``
/// - ``animationLooped``
/// - ``animationFinished``
open class AnimatedSprite2D: Node2D {
    override open class var godotClassName: StringName { "AnimatedSprite2D" }
    
    /* Properties */
    
    /// The ``SpriteFrames`` resource containing the animation(s). Allows you the option to load, edit, clear, make unique and save the states of the ``SpriteFrames`` resource.
    final public var spriteFrames: SpriteFrames? {
        get {
            return get_sprite_frames ()
        }
        
        set {
            set_sprite_frames (newValue)
        }
        
    }
    
    /// The current animation from the ``spriteFrames`` resource. If this value is changed, the ``frame`` counter and the ``frameProgress`` are reset.
    final public var animation: StringName {
        get {
            return get_animation ()
        }
        
        set {
            set_animation (newValue)
        }
        
    }
    
    /// The key of the animation to play when the scene loads.
    final public var autoplay: String {
        get {
            return get_autoplay ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// The displayed animation frame's index. Setting this property also resets ``frameProgress``. If this is not desired, use ``setFrameAndProgress(frame:progress:)``.
    final public var frame: Int32 {
        get {
            return get_frame ()
        }
        
        set {
            set_frame (newValue)
        }
        
    }
    
    /// The progress value between `0.0` and `1.0` until the current frame transitions to the next frame. If the animation is playing backwards, the value transitions from `1.0` to `0.0`.
    final public var frameProgress: Double {
        get {
            return get_frame_progress ()
        }
        
        set {
            set_frame_progress (newValue)
        }
        
    }
    
    /// The speed scaling ratio. For example, if this value is `1`, then the animation plays at normal speed. If it's `0.5`, then it plays at half speed. If it's `2`, then it plays at double speed.
    /// 
    /// If set to a negative value, the animation is played in reverse. If set to `0`, the animation will not advance.
    /// 
    final public var speedScale: Double {
        get {
            return get_speed_scale ()
        }
        
        set {
            set_speed_scale (newValue)
        }
        
    }
    
    /// If `true`, texture will be centered.
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
    
    /* Methods */
    fileprivate static var method_set_sprite_frames: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_sprite_frames")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 905781144)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sprite_frames(_ spriteFrames: SpriteFrames?) {
        withUnsafePointer(to: spriteFrames?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_sprite_frames, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_sprite_frames: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_sprite_frames")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3804851214)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sprite_frames() -> SpriteFrames? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_sprite_frames, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_animation")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_animation(_ name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_animation")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_animation() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_animation, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autoplay")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay(_ name: String) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_autoplay, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_autoplay")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autoplay() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_autoplay, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_is_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_playing")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an animation is currently playing (even if ``speedScale`` and/or `custom_speed` are `0`).
    public final func isPlaying() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_is_playing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_play: GDExtensionMethodBindPtr = {
        let methodName = StringName("play")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2372066587)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name`. If `customSpeed` is negative and `fromEnd` is `true`, the animation will play backwards (which is equivalent to calling ``playBackwards(name:)``).
    /// 
    /// If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused.
    /// 
    public final func play(name: StringName = StringName (""), customSpeed: Double = 1.0, fromEnd: Bool = false) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: customSpeed) { pArg1 in
                withUnsafePointer(to: fromEnd) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimatedSprite2D.method_play, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_play_backwards: GDExtensionMethodBindPtr = {
        let methodName = StringName("play_backwards")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1421762485)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` in reverse.
    /// 
    /// This method is a shorthand for ``play(name:customSpeed:fromEnd:)`` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
    /// 
    public final func playBackwards(name: StringName = StringName ("")) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_play_backwards, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_pause: GDExtensionMethodBindPtr = {
        let methodName = StringName("pause")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Pauses the currently playing animation. The ``frame`` and ``frameProgress`` will be kept and calling ``play(name:customSpeed:fromEnd:)`` or ``playBackwards(name:)`` without arguments will resume the animation from the current playback position.
    /// 
    /// See also ``stop()``.
    /// 
    public final func pause() {
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_pause, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName("stop")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the currently playing animation. The animation position is reset to `0` and the `custom_speed` is reset to `1.0`. See also ``pause()``.
    public final func stop() {
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_stop, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_centered: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_centered")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_centered, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_centered: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_centered")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_centered() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_is_centered, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_offset")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_offset")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_flip_h: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flip_h")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_flip_h, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_flipped_h: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_flipped_h")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_h() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_is_flipped_h, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_flip_v: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flip_v")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_flip_v, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_flipped_v: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_flipped_v")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_v() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_is_flipped_v, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_frame")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_frame, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_frame")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frame() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_frame, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_frame_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_frame_progress")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frame_progress(_ progress: Double) {
        withUnsafePointer(to: progress) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_frame_progress, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_frame_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_frame_progress")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frame_progress() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_frame_progress, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_frame_and_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_frame_and_progress")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// The setter of ``frame`` resets the ``frameProgress`` to `0.0` implicitly, but this method avoids that.
    /// 
    /// This is useful when you want to carry over the current ``frameProgress`` to another ``frame``.
    /// 
    /// **Example:**
    /// 
    public final func setFrameAndProgress(frame: Int32, progress: Double) {
        withUnsafePointer(to: frame) { pArg0 in
            withUnsafePointer(to: progress) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_frame_and_progress, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_speed_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_speed_scale")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_speed_scale(_ speedScale: Double) {
        withUnsafePointer(to: speedScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatedSprite2D.method_set_speed_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_speed_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_speed_scale")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_speed_scale() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_speed_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_playing_speed: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_playing_speed")
        return withUnsafePointer(to: &AnimatedSprite2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the actual playing speed of current animation or `0` if not playing. This speed is the ``speedScale`` property multiplied by `custom_speed` argument specified when calling the ``play(name:customSpeed:fromEnd:)`` method.
    /// 
    /// Returns a negative value if the current animation is playing backwards.
    /// 
    public final func getPlayingSpeed() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimatedSprite2D.method_get_playing_speed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when ``spriteFrames`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.spriteFramesChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var spriteFramesChanged: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "sprite_frames_changed") }
    
    /// Emitted when ``animation`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationChanged: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "animation_changed") }
    
    /// Emitted when ``frame`` changes.
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
    public var frameChanged: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "frame_changed") }
    
    /// Emitted when the animation loops.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationLooped.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationLooped: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "animation_looped") }
    
    /// Emitted when the animation reaches the end, or the start if it is played in reverse. When the animation finishes, it pauses the playback.
    /// 
    /// > Note: This signal is not emitted if an animation is looping.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationFinished.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationFinished: GenericSignal< /* no args */ > { GenericSignal< /* no args */ > (target: self, signalName: "animation_finished") }
    
}

