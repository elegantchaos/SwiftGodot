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

/// Imports a bitmap font in the BMFont (`.fnt`) format.
/// 
/// The BMFont format is a format created by the <a href="https://www.angelcode.com/products/bmfont/">BMFont</a> program. Many BMFont-compatible programs also exist, like <a href="https://www.bmglyph.com/">BMGlyph</a>.
/// 
/// Compared to ``ResourceImporterImageFont``, ``ResourceImporterBMFont`` supports bitmap fonts with varying glyph widths/heights.
/// 
/// See also ``ResourceImporterDynamicFont``.
/// 
open class ResourceImporterBMFont: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterBMFont" }
}
