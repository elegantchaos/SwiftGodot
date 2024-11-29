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

/// SDF raymarching algorithm to be used within the visual shader graph.
/// 
/// Casts a ray against the screen SDF (signed-distance field) and returns the distance travelled.
open class VisualShaderNodeSDFRaymarch: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeSDFRaymarch" }
}
