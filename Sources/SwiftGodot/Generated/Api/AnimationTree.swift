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

/// A node used for advanced animation transitions in an ``AnimationPlayer``.
/// 
/// A node used for advanced animation transitions in an ``AnimationPlayer``.
/// 
/// > Note: When linked with an ``AnimationPlayer``, several properties and methods of the corresponding ``AnimationPlayer`` will not function as expected. Playback and transitions should be handled using only the ``AnimationTree`` and its constituent ``AnimationNode``(s). The ``AnimationPlayer`` node should be used solely for adding, deleting, and editing animations.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``animationPlayerChanged``
open class AnimationTree: AnimationMixer {
    override open class var godotClassName: StringName { "AnimationTree" }
    public enum AnimationProcessCallback: Int64, CaseIterable, CustomDebugStringConvertible {
        /// 
        case physics = 0 // ANIMATION_PROCESS_PHYSICS
        /// 
        case idle = 1 // ANIMATION_PROCESS_IDLE
        /// 
        case manual = 2 // ANIMATION_PROCESS_MANUAL
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .physics: return ".physics"
                case .idle: return ".idle"
                case .manual: return ".manual"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The root animation node of this ``AnimationTree``. See ``AnimationRootNode``.
    final public var treeRoot: AnimationRootNode? {
        get {
            return get_tree_root ()
        }
        
        set {
            set_tree_root (newValue)
        }
        
    }
    
    /// The path to the ``Node`` used to evaluate the ``AnimationNode`` ``Expression`` if one is not explicitly specified internally.
    final public var advanceExpressionBaseNode: NodePath {
        get {
            return get_advance_expression_base_node ()
        }
        
        set {
            set_advance_expression_base_node (newValue)
        }
        
    }
    
    /// The path to the ``AnimationPlayer`` used for animating.
    final public var animPlayer: NodePath {
        get {
            return get_animation_player ()
        }
        
        set {
            set_animation_player (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_tree_root: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tree_root")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2581683800)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tree_root(_ animationNode: AnimationRootNode?) {
        withUnsafePointer(to: animationNode?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationTree.method_set_tree_root, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tree_root: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tree_root")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4110384712)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tree_root() -> AnimationRootNode? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AnimationTree.method_get_tree_root, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_advance_expression_base_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_advance_expression_base_node")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_advance_expression_base_node(_ path: NodePath) {
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationTree.method_set_advance_expression_base_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_advance_expression_base_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_advance_expression_base_node")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_advance_expression_base_node() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(AnimationTree.method_get_advance_expression_base_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_animation_player: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_animation_player")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_animation_player(_ path: NodePath) {
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationTree.method_set_animation_player, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_animation_player: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_animation_player")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_animation_player() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(AnimationTree.method_get_animation_player, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_process_callback: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_process_callback")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1723352826)!
            }
            
        }
        
    }()
    
    /// Sets the process notification in which to update animations.
    public final func setProcessCallback(mode: AnimationTree.AnimationProcessCallback) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationTree.method_set_process_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_process_callback: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_process_callback")
        return withUnsafePointer(to: &AnimationTree.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 891317132)!
            }
            
        }
        
    }()
    
    /// Returns the process notification in which to update animations.
    public final func getProcessCallback() -> AnimationTree.AnimationProcessCallback {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationTree.method_get_process_callback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationTree.AnimationProcessCallback (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted when the ``animPlayer`` is changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationPlayerChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationPlayerChanged: SimpleSignal { SimpleSignal (target: self, signalName: "animation_player_changed") }
    
}
