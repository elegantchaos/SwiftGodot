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

/// Represents an object from the Java Native Interface.
/// 
/// Represents an object from the Java Native Interface. It is returned from ``JavaClassWrapper/wrap(name:)``.
/// 
/// > Note: This class only works on Android. For any other build, this class does nothing.
/// 
/// > Note: This class is not to be confused with ``JavaScriptObject``.
/// 
open class JavaClass: RefCounted {
    override open class var godotClassName: StringName { "JavaClass" }
}

