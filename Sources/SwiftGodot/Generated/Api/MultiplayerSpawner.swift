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

/// Automatically replicates spawnable nodes from the authority to other multiplayer peers.
/// 
/// Spawnable scenes can be configured in the editor or through code (see ``addSpawnableScene(path:)``).
/// 
/// Also supports custom node spawns through ``spawn(data:)``, calling ``spawnFunction`` on all peers.
/// 
/// Internally, ``MultiplayerSpawner`` uses ``MultiplayerAPI/objectConfigurationAdd(object:configuration:)`` to notify spawns passing the spawned node as the `object` and itself as the `configuration`, and ``MultiplayerAPI/objectConfigurationRemove(object:configuration:)`` to notify despawns in a similar way.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``despawned``
/// - ``spawned``
open class MultiplayerSpawner: Node {
    override open class var godotClassName: StringName { "MultiplayerSpawner" }
    
    /* Properties */
    
    /// Path to the spawn root. Spawnable scenes that are added as direct children are replicated to other peers.
    final public var spawnPath: NodePath {
        get {
            return get_spawn_path ()
        }
        
        set {
            set_spawn_path (newValue)
        }
        
    }
    
    /// Maximum nodes that is allowed to be spawned by this spawner. Includes both spawnable scenes and custom spawns.
    /// 
    /// When set to `0` (the default), there is no limit.
    /// 
    final public var spawnLimit: UInt32 {
        get {
            return get_spawn_limit ()
        }
        
        set {
            set_spawn_limit (newValue)
        }
        
    }
    
    /// Method called on all peers when for every custom ``spawn(data:)`` requested by the authority. Will receive the `data` parameter, and should return a ``Node`` that is not in the scene tree.
    /// 
    /// > Note: The returned node should **not** be added to the scene with ``Node/addChild(node:forceReadableName:`internal`:)``. This is done automatically.
    /// 
    final public var spawnFunction: Callable {
        get {
            return get_spawn_function ()
        }
        
        set {
            set_spawn_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_spawnable_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_spawnable_scene")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a scene path to spawnable scenes, making it automatically replicated from the multiplayer authority to other peers when added as children of the node pointed by ``spawnPath``.
    public final func addSpawnableScene(path: String) {
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_add_spawnable_scene, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_spawnable_scene_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_spawnable_scene_count")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the count of spawnable scene paths.
    public final func getSpawnableSceneCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerSpawner.method_get_spawnable_scene_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_spawnable_scene: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_spawnable_scene")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the spawnable scene path by index.
    public final func getSpawnableScene(index: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_get_spawnable_scene, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_clear_spawnable_scenes: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_spawnable_scenes")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all spawnable scenes. Does not despawn existing instances on remote peers.
    public final func clearSpawnableScenes() {
        gi.object_method_bind_ptrcall(MultiplayerSpawner.method_clear_spawnable_scenes, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_spawn: GDExtensionMethodBindPtr = {
        let methodName = StringName("spawn")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1991184589)!
            }
            
        }
        
    }()
    
    /// Requests a custom spawn, with `data` passed to ``spawnFunction`` on all peers. Returns the locally spawned node instance already inside the scene tree, and added as a child of the node pointed by ``spawnPath``.
    /// 
    /// > Note: Spawnable scenes are spawned automatically. ``spawn(data:)`` is only needed for custom spawns.
    /// 
    public final func spawn(data: Variant?) -> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_spawn, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_spawn_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_spawn_path")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_path() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(MultiplayerSpawner.method_get_spawn_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_spawn_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_spawn_path")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_path(_ path: NodePath) {
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_set_spawn_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_spawn_limit: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_spawn_limit")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_limit() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MultiplayerSpawner.method_get_spawn_limit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_spawn_limit: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_spawn_limit")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_limit(_ limit: UInt32) {
        withUnsafePointer(to: limit) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_set_spawn_limit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_spawn_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_spawn_function")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1307783378)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spawn_function() -> Callable {
        let _result: Callable = Callable ()
        gi.object_method_bind_ptrcall(MultiplayerSpawner.method_get_spawn_function, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_spawn_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_spawn_function")
        return withUnsafePointer(to: &MultiplayerSpawner.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spawn_function(_ spawnFunction: Callable) {
        withUnsafePointer(to: spawnFunction.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSpawner.method_set_spawn_function, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when a spawnable scene or custom spawn was despawned by the multiplayer authority. Only called on puppets.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.despawned.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var despawned: GenericSignal<Node> { GenericSignal<Node> (target: self, signalName: "despawned") }
    
    /// Emitted when a spawnable scene or custom spawn was spawned by the multiplayer authority. Only called on puppets.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.spawned.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var spawned: GenericSignal<Node> { GenericSignal<Node> (target: self, signalName: "spawned") }
    
}

