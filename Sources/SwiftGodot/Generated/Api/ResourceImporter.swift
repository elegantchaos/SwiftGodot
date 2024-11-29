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

/// Base class for resource importers.
/// 
/// This is the base class for Godot's resource importers. To implement your own resource importers using editor plugins, see ``EditorImportPlugin``.
open class ResourceImporter: RefCounted {
    override open class var godotClassName: StringName { "ResourceImporter" }
    public enum ImportOrder: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The default import order.
        case `default` = 0 // IMPORT_ORDER_DEFAULT
        /// The import order for scenes, which ensures scenes are imported _after_ all other core resources such as textures. Custom importers should generally have an import order lower than `100` to avoid issues when importing scenes that rely on custom resources.
        case scene = 100 // IMPORT_ORDER_SCENE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .`default`: return ".`default`"
                case .scene: return ".scene"
            }
            
        }
        
    }
    
}
