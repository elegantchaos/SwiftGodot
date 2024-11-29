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

/// Base class for the desktop platform exporter (Windows and Linux/BSD).
/// 
/// The base class for the desktop platform exporters. These include Windows and Linux/BSD, but not macOS. See the classes inheriting this one for more details.
open class EditorExportPlatformPC: EditorExportPlatform {
    override open class var godotClassName: StringName { "EditorExportPlatformPC" }
}
