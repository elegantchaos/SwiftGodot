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

/// Imports an image for use in 2D or 3D rendering.
/// 
/// This importer imports ``CompressedTexture2D`` resources. If you need to process the image in scripts in a more convenient way, use ``ResourceImporterImage`` instead. See also ``ResourceImporterLayeredTexture``.
open class ResourceImporterTexture: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterTexture" }
}

