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

/// A visual shader node that makes particles move in a cone shape.
/// 
/// This node can be used in "start" step of particle shader. It defines the initial velocity of the particles, making them move in cone shape starting from the center, with a given spread.
open class VisualShaderNodeParticleConeVelocity: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeParticleConeVelocity" }
}
