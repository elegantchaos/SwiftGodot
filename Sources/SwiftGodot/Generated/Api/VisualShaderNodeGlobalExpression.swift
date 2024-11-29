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

/// A custom global visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in ``VisualShaderNodeExpression``s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
open class VisualShaderNodeGlobalExpression: VisualShaderNodeExpression {
    override open class var godotClassName: StringName { "VisualShaderNodeGlobalExpression" }
}
