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

/// A popup with a panel background.
/// 
/// A popup with a configurable panel background. Any child controls added to this node will be stretched to fit the panel's size (similar to how ``PanelContainer`` works). If you are making windows, see ``Window``.
open class PopupPanel: Popup {
    override open class var godotClassName: StringName { "PopupPanel" }
}
