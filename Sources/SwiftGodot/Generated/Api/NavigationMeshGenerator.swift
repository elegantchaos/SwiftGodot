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

/// Helper class for creating and clearing navigation meshes.
/// 
/// This class is responsible for creating and clearing 3D navigation meshes used as ``NavigationMesh`` resources inside ``NavigationRegion3D``. The ``NavigationMeshGenerator`` has very limited to no use for 2D as the navigation mesh baking process expects 3D node types and 3D source geometry to parse.
/// 
/// The entire navigation mesh baking is best done in a separate thread as the voxelization, collision tests and mesh optimization steps involved are very slow and performance-intensive operations.
/// 
/// Navigation mesh baking happens in multiple steps and the result depends on 3D source geometry and properties of the ``NavigationMesh`` resource. In the first step, starting from a root node and depending on ``NavigationMesh`` properties all valid 3D source geometry nodes are collected from the ``SceneTree``. Second, all collected nodes are parsed for their relevant 3D geometry data and a combined 3D mesh is build. Due to the many different types of parsable objects, from normal ``MeshInstance3D``s to ``CSGShape3D``s or various ``CollisionObject3D``s, some operations to collect geometry data can trigger ``RenderingServer`` and ``PhysicsServer3D`` synchronizations. Server synchronization can have a negative effect on baking time or framerate as it often involves ``Mutex`` locking for thread security. Many parsable objects and the continuous synchronization with other threaded Servers can increase the baking time significantly. On the other hand only a few but very large and complex objects will take some time to prepare for the Servers which can noticeably stall the next frame render. As a general rule the total number of parsable objects and their individual size and complexity should be balanced to avoid framerate issues or very long baking times. The combined mesh is then passed to the Recast Navigation Object to test the source geometry for walkable terrain suitable to ``NavigationMesh`` agent properties by creating a voxel world around the meshes bounding area.
/// 
/// The finalized navigation mesh is then returned and stored inside the ``NavigationMesh`` for use as a resource inside ``NavigationRegion3D`` nodes.
/// 
/// > Note: Using meshes to not only define walkable surfaces but also obstruct navigation baking does not always work. The navigation baking has no concept of what is a geometry "inside" when dealing with mesh source geometry and this is intentional. Depending on current baking parameters, as soon as the obstructing mesh is large enough to fit a navigation mesh area inside, the baking will generate navigation mesh areas that are inside the obstructing source geometry mesh.
/// 
open class NavigationMeshGenerator: Object {
    /// The shared instance of this class
    public static var shared: NavigationMeshGenerator = {
        return withUnsafePointer (to: &NavigationMeshGenerator.godotClassName.content) { ptr in
            NavigationMeshGenerator (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "NavigationMeshGenerator" }
    /* Methods */
    fileprivate static var method_bake: GDExtensionMethodBindPtr = {
        let methodName = StringName("bake")
        return withUnsafePointer(to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1401173477)!
            }
            
        }
        
    }()
    
    /// Bakes the `navigationMesh` with source geometry collected starting from the `rootNode`.
    public static func bake(navigationMesh: NavigationMesh?, rootNode: Node?) {
        withUnsafePointer(to: navigationMesh?.handle) { pArg0 in
            withUnsafePointer(to: rootNode?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_bake, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear")
        return withUnsafePointer(to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2923361153)!
            }
            
        }
        
    }()
    
    /// Removes all polygons and vertices from the provided `navigationMesh` resource.
    public static func clear(navigationMesh: NavigationMesh?) {
        withUnsafePointer(to: navigationMesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_clear, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_parse_source_geometry_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("parse_source_geometry_data")
        return withUnsafePointer(to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 685862123)!
            }
            
        }
        
    }()
    
    /// Parses the ``SceneTree`` for source geometry according to the properties of `navigationMesh`. Updates the provided `sourceGeometryData` resource with the resulting data. The resource can then be used to bake a navigation mesh with ``bakeFromSourceGeometryData(navigationMesh:sourceGeometryData:callback:)``. After the process is finished the optional `callback` will be called.
    /// 
    /// > Note: This function needs to run on the main thread or with a deferred call as the SceneTree is not thread-safe.
    /// 
    /// **Performance:** While convenient, reading data arrays from ``Mesh`` resources can affect the frame rate negatively. The data needs to be received from the GPU, stalling the ``RenderingServer`` in the process. For performance prefer the use of e.g. collision shapes or creating the data arrays entirely in code.
    /// 
    public static func parseSourceGeometryData(navigationMesh: NavigationMesh?, sourceGeometryData: NavigationMeshSourceGeometryData3D?, rootNode: Node?, callback: Callable = Callable()) {
        withUnsafePointer(to: navigationMesh?.handle) { pArg0 in
            withUnsafePointer(to: sourceGeometryData?.handle) { pArg1 in
                withUnsafePointer(to: rootNode?.handle) { pArg2 in
                    withUnsafePointer(to: callback.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_parse_source_geometry_data, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_bake_from_source_geometry_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("bake_from_source_geometry_data")
        return withUnsafePointer(to: &NavigationMeshGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2469318639)!
            }
            
        }
        
    }()
    
    /// Bakes the provided `navigationMesh` with the data from the provided `sourceGeometryData`. After the process is finished the optional `callback` will be called.
    public static func bakeFromSourceGeometryData(navigationMesh: NavigationMesh?, sourceGeometryData: NavigationMeshSourceGeometryData3D?, callback: Callable = Callable()) {
        withUnsafePointer(to: navigationMesh?.handle) { pArg0 in
            withUnsafePointer(to: sourceGeometryData?.handle) { pArg1 in
                withUnsafePointer(to: callback.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_bake_from_source_geometry_data, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}
