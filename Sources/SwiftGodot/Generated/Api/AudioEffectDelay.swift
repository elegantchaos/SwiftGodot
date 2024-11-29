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

/// Adds a delay audio effect to an audio bus. Plays input signal back after a period of time.
/// 
/// Two tap delay and feedback options.
/// 
/// 
/// Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.
open class AudioEffectDelay: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectDelay" }
    
    /* Properties */
    
    /// Output percent of original sound. At 0, only delayed sounds are output. Value can range from 0 to 1.
    final public var dry: Double {
        get {
            return get_dry ()
        }
        
        set {
            set_dry (newValue)
        }
        
    }
    
    /// If `true`, the first tap will be enabled.
    final public var tap1Active: Bool {
        get {
            return is_tap1_active ()
        }
        
        set {
            set_tap1_active (newValue)
        }
        
    }
    
    /// First tap delay time in milliseconds.
    final public var tap1DelayMs: Double {
        get {
            return get_tap1_delay_ms ()
        }
        
        set {
            set_tap1_delay_ms (newValue)
        }
        
    }
    
    /// Sound level for the first tap.
    final public var tap1LevelDb: Double {
        get {
            return get_tap1_level_db ()
        }
        
        set {
            set_tap1_level_db (newValue)
        }
        
    }
    
    /// Pan position for the first tap. Value can range from -1 (fully left) to 1 (fully right).
    final public var tap1Pan: Double {
        get {
            return get_tap1_pan ()
        }
        
        set {
            set_tap1_pan (newValue)
        }
        
    }
    
    /// If `true`, the second tap will be enabled.
    final public var tap2Active: Bool {
        get {
            return is_tap2_active ()
        }
        
        set {
            set_tap2_active (newValue)
        }
        
    }
    
    /// Second tap delay time in milliseconds.
    final public var tap2DelayMs: Double {
        get {
            return get_tap2_delay_ms ()
        }
        
        set {
            set_tap2_delay_ms (newValue)
        }
        
    }
    
    /// Sound level for the second tap.
    final public var tap2LevelDb: Double {
        get {
            return get_tap2_level_db ()
        }
        
        set {
            set_tap2_level_db (newValue)
        }
        
    }
    
    /// Pan position for the second tap. Value can range from -1 (fully left) to 1 (fully right).
    final public var tap2Pan: Double {
        get {
            return get_tap2_pan ()
        }
        
        set {
            set_tap2_pan (newValue)
        }
        
    }
    
    /// If `true`, feedback is enabled.
    final public var feedbackActive: Bool {
        get {
            return is_feedback_active ()
        }
        
        set {
            set_feedback_active (newValue)
        }
        
    }
    
    /// Feedback delay time in milliseconds.
    final public var feedbackDelayMs: Double {
        get {
            return get_feedback_delay_ms ()
        }
        
        set {
            set_feedback_delay_ms (newValue)
        }
        
    }
    
    /// Sound level for feedback.
    final public var feedbackLevelDb: Double {
        get {
            return get_feedback_level_db ()
        }
        
        set {
            set_feedback_level_db (newValue)
        }
        
    }
    
    /// Low-pass filter for feedback, in Hz. Frequencies below this value are filtered out of the source signal.
    final public var feedbackLowpass: Double {
        get {
            return get_feedback_lowpass ()
        }
        
        set {
            set_feedback_lowpass (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_dry: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_dry")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dry(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_dry, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_dry: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_dry")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dry() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_dry, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap1_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap1_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap1_active(_ amount: Bool) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap1_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_tap1_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_tap1_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_tap1_active() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_is_tap1_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap1_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap1_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap1_delay_ms(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap1_delay_ms, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap1_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap1_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap1_delay_ms() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap1_delay_ms, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap1_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap1_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap1_level_db(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap1_level_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap1_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap1_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap1_level_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap1_level_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap1_pan: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap1_pan")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap1_pan(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap1_pan, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap1_pan: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap1_pan")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap1_pan() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap1_pan, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap2_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap2_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap2_active(_ amount: Bool) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap2_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_tap2_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_tap2_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_tap2_active() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_is_tap2_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap2_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap2_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap2_delay_ms(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap2_delay_ms, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap2_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap2_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap2_delay_ms() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap2_delay_ms, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap2_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap2_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap2_level_db(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap2_level_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap2_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap2_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap2_level_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap2_level_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap2_pan: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap2_pan")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap2_pan(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_tap2_pan, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap2_pan: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap2_pan")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap2_pan() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_tap2_pan, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_feedback_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_feedback_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_feedback_active(_ amount: Bool) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_feedback_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_feedback_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_feedback_active")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_feedback_active() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_is_feedback_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_feedback_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_feedback_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_feedback_delay_ms(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_feedback_delay_ms, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_feedback_delay_ms: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_feedback_delay_ms")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_feedback_delay_ms() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_feedback_delay_ms, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_feedback_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_feedback_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_feedback_level_db(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_feedback_level_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_feedback_level_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_feedback_level_db")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_feedback_level_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_feedback_level_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_feedback_lowpass: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_feedback_lowpass")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_feedback_lowpass(_ amount: Double) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectDelay.method_set_feedback_lowpass, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_feedback_lowpass: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_feedback_lowpass")
        return withUnsafePointer(to: &AudioEffectDelay.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_feedback_lowpass() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectDelay.method_get_feedback_lowpass, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

