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

/// An abstraction of a serialized scene.
/// 
/// A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
/// 
/// Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see ``Node/owner`` property).
/// 
/// > Note: The node doesn't need to own itself.
/// 
/// **Example of loading a saved scene:**
/// 
/// **Example of saving a node with different owners:** The following example creates 3 objects: ``Node2D`` (`node`), ``RigidBody2D`` (`body`) and ``CollisionObject2D`` (`collision`). `collision` is a child of `body` which is a child of `node`. Only `body` is owned by `node` and ``pack(path:)`` will therefore only save those two nodes, but not `collision`.
/// 
open class PackedScene: Resource {
    override open class var godotClassName: StringName { "PackedScene" }
    public enum GenEditState: Int64, CaseIterable, CustomDebugStringConvertible {
        /// If passed to ``instantiate(editState:)``, blocks edits to the scene state.
        case disabled = 0 // GEN_EDIT_STATE_DISABLED
        /// If passed to ``instantiate(editState:)``, provides local scene resources to the local scene.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case instance = 1 // GEN_EDIT_STATE_INSTANCE
        /// If passed to ``instantiate(editState:)``, provides local scene resources to the local scene. Only the main scene should receive the main edit state.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case main = 2 // GEN_EDIT_STATE_MAIN
        /// It's similar to ``GenEditState/main``, but for the case where the scene is being instantiated to be the base of another one.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case mainInherited = 3 // GEN_EDIT_STATE_MAIN_INHERITED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .disabled: return ".disabled"
                case .instance: return ".instance"
                case .main: return ".main"
                case .mainInherited: return ".mainInherited"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_pack: GDExtensionMethodBindPtr = {
        let methodName = StringName("pack")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2584678054)!
            }
            
        }
        
    }()
    
    /// Packs the `path` node, and all owned sub-nodes, into this ``PackedScene``. Any existing data will be cleared. See ``Node/owner``.
    public final func pack(path: Node?) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: path?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PackedScene.method_pack, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_instantiate: GDExtensionMethodBindPtr = {
        let methodName = StringName("instantiate")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2628778455)!
            }
            
        }
        
    }()
    
    /// Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a ``Node/notificationSceneInstantiated`` notification on the root node.
    public final func instantiate(editState: PackedScene.GenEditState = .disabled) -> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: editState.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PackedScene.method_instantiate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_can_instantiate: GDExtensionMethodBindPtr = {
        let methodName = StringName("can_instantiate")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the scene file has nodes.
    public final func canInstantiate() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PackedScene.method_can_instantiate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_state: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_state")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3479783971)!
            }
            
        }
        
    }()
    
    /// Returns the ``SceneState`` representing the scene file contents.
    public final func getState() -> SceneState? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(PackedScene.method_get_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

