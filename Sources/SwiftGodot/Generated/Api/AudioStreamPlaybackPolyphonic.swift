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

/// Playback instance for ``AudioStreamPolyphonic``.
/// 
/// Playback instance for ``AudioStreamPolyphonic``. After setting the `stream` property of ``AudioStreamPlayer``, ``AudioStreamPlayer2D``, or ``AudioStreamPlayer3D``, the playback instance can be obtained by calling ``AudioStreamPlayer/getStreamPlayback()``, ``AudioStreamPlayer2D/getStreamPlayback()`` or ``AudioStreamPlayer3D/getStreamPlayback()`` methods.
open class AudioStreamPlaybackPolyphonic: AudioStreamPlayback {
    override open class var godotClassName: StringName { "AudioStreamPlaybackPolyphonic" }
    /* Constants */
    /// Returned by ``playStream(_:fromOffset:volumeDb:pitchScale:playbackType:bus:)`` in case it could not allocate a stream for playback.
    public static let invalidId = -1
    /* Methods */
    fileprivate static var method_play_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName("play_stream")
        return withUnsafePointer(to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1846744803)!
            }
            
        }
        
    }()
    
    /// Play an ``AudioStream`` at a given offset, volume, pitch scale, playback type, and bus. Playback starts immediately.
    /// 
    /// The return value is a unique integer ID that is associated to this playback stream and which can be used to control it.
    /// 
    /// This ID becomes invalid when the stream ends (if it does not loop), when the ``AudioStreamPlaybackPolyphonic`` is stopped, or when ``stopStream(_:)`` is called.
    /// 
    /// This function returns ``invalidId`` if the amount of streams currently playing equals ``AudioStreamPolyphonic/polyphony``. If you need a higher amount of maximum polyphony, raise this value.
    /// 
    public final func playStream(_ stream: AudioStream?, fromOffset: Double = 0, volumeDb: Double = 0, pitchScale: Double = 1.0, playbackType: AudioServer.PlaybackType = .`default`, bus: StringName = StringName ("Master")) -> Int {
        var _result: Int = 0
        withUnsafePointer(to: stream?.handle) { pArg0 in
            withUnsafePointer(to: fromOffset) { pArg1 in
                withUnsafePointer(to: volumeDb) { pArg2 in
                    withUnsafePointer(to: pitchScale) { pArg3 in
                        withUnsafePointer(to: playbackType.rawValue) { pArg4 in
                            withUnsafePointer(to: bus.content) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(AudioStreamPlaybackPolyphonic.method_play_stream, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_stream_volume: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stream_volume")
        return withUnsafePointer(to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Change the stream volume (in db). The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:playbackType:bus:)``.
    public final func setStreamVolume(stream: Int, volumeDb: Double) {
        withUnsafePointer(to: stream) { pArg0 in
            withUnsafePointer(to: volumeDb) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamPlaybackPolyphonic.method_set_stream_volume, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_stream_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stream_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Change the stream pitch scale. The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:playbackType:bus:)``.
    public final func setStreamPitchScale(stream: Int, pitchScale: Double) {
        withUnsafePointer(to: stream) { pArg0 in
            withUnsafePointer(to: pitchScale) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamPlaybackPolyphonic.method_set_stream_pitch_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_stream_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_stream_playing")
        return withUnsafePointer(to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Return true whether the stream associated with an integer ID is still playing. Check ``playStream(_:fromOffset:volumeDb:pitchScale:playbackType:bus:)`` for information on when this ID becomes invalid.
    public final func isStreamPlaying(stream: Int) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: stream) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlaybackPolyphonic.method_is_stream_playing, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_stop_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName("stop_stream")
        return withUnsafePointer(to: &AudioStreamPlaybackPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Stop a stream. The `stream` argument is an integer ID returned by ``playStream(_:fromOffset:volumeDb:pitchScale:playbackType:bus:)``, which becomes invalid after calling this function.
    public final func stopStream(_ stream: Int) {
        withUnsafePointer(to: stream) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlaybackPolyphonic.method_stop_stream, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}
