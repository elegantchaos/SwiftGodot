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

/// Plays real-time audio input data.
/// 
/// When used directly in an ``AudioStreamPlayer`` node, ``AudioStreamMicrophone`` plays back microphone input in real-time. This can be used in conjunction with ``AudioEffectCapture`` to process the data or save it.
/// 
/// > Note: ``ProjectSettings/audio/driver/enableInput`` must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.
/// 
open class AudioStreamMicrophone: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamMicrophone" }
}
