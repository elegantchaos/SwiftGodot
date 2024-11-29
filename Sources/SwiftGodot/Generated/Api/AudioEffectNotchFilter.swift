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

/// Adds a notch filter to the Audio bus.
/// 
/// Attenuates frequencies in a narrow band around the ``AudioEffectFilter/cutoffHz`` and cuts frequencies outside of this range.
open class AudioEffectNotchFilter: AudioEffectFilter {
    override open class var godotClassName: StringName { "AudioEffectNotchFilter" }
}
