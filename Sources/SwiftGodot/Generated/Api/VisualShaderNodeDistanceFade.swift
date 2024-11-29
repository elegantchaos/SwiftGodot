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

/// A visual shader node representing distance fade effect.
/// 
/// The distance fade effect fades out each pixel based on its distance to another object.
open class VisualShaderNodeDistanceFade: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeDistanceFade" }
}

