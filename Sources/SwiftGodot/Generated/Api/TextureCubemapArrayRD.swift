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

/// Texture Array for Cubemaps that is bound to a texture created on the ``RenderingDevice``.
/// 
/// This texture class allows you to use a cubemap array texture created directly on the ``RenderingDevice`` as a texture for materials, meshes, etc.
open class TextureCubemapArrayRD: TextureLayeredRD {
    override open class var godotClassName: StringName { "TextureCubemapArrayRD" }
}

