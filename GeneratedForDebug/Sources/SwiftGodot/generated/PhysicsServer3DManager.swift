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

/// A singleton for managing ``PhysicsServer3D`` implementations.
/// 
/// ``PhysicsServer3DManager`` is the API for registering ``PhysicsServer3D`` implementations and for setting the default implementation.
/// 
/// > Note: It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.
/// 
open class PhysicsServer3DManager: Object {
    /// The shared instance of this class
    public static var shared: PhysicsServer3DManager = {
        return withUnsafePointer (to: &PhysicsServer3DManager.godotClassName.content) { ptr in
            PhysicsServer3DManager (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "PhysicsServer3DManager" }
    /* Methods */
    fileprivate static var method_register_server: GDExtensionMethodBindPtr = {
        let methodName = StringName("register_server")
        return withUnsafePointer(to: &PhysicsServer3DManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2137474292)!
            }
            
        }
        
    }()
    
    /// Register a ``PhysicsServer3D`` implementation by passing a `name` and a ``Callable`` that returns a ``PhysicsServer3D`` object.
    public static func registerServer(name: String, createCallback: Callable) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: createCallback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_register_server, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_default_server: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_server")
        return withUnsafePointer(to: &PhysicsServer3DManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2956805083)!
            }
            
        }
        
    }()
    
    /// Set the default ``PhysicsServer3D`` implementation to the one identified by `name`, if `priority` is greater than the priority of the current default implementation.
    public static func setDefaultServer(name: String, priority: Int32) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: priority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_set_default_server, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

