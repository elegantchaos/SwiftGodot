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

/// Blends two of three animations linearly inside of an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. Blends two animations out of three linearly out of three based on the amount value.
/// 
/// This animation node has three inputs:
/// 
/// - The base animation to blend with
/// 
/// - A "-blend" animation to blend with when the blend amount is negative value
/// 
/// - A "+blend" animation to blend with when the blend amount is positive value
/// 
/// In general, the blend value should be in the `[-1.0, 1.0]` range. Values outside of this range can blend amplified animations, however, ``AnimationNodeAdd3`` works better for this purpose.
/// 
open class AnimationNodeBlend3: AnimationNodeSync {
    override open class var godotClassName: StringName { "AnimationNodeBlend3" }
}

