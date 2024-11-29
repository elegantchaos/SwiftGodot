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

/// Imports a ``BitMap`` resource (2D array of boolean values).
/// 
/// ``BitMap`` resources are typically used as click masks in ``TextureButton`` and ``TouchScreenButton``.
open class ResourceImporterBitMap: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterBitMap" }
}
