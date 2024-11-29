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

/// Returns the length of a ``Vector3`` within the visual shader graph.
/// 
/// Translated to `length(p0)` in the shader language.
open class VisualShaderNodeVectorLen: VisualShaderNodeVectorBase {
    override open class var godotClassName: StringName { "VisualShaderNodeVectorLen" }
}
