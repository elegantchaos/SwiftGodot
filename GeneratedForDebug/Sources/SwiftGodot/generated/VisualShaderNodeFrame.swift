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

/// A frame other visual shader nodes can be attached to for better organization.
/// 
/// A rectangular frame that can be used to group visual shader nodes together to improve organization.
/// 
/// Nodes attached to the frame will move with it when it is dragged and it can automatically resize to enclose all attached nodes.
/// 
/// Its title, description and color can be customized.
/// 
open class VisualShaderNodeFrame: VisualShaderNodeResizableBase {
    override open class var godotClassName: StringName { "VisualShaderNodeFrame" }
    
    /* Properties */
    
    /// The title of the node.
    final public var title: String {
        get {
            return get_title ()
        }
        
        set {
            set_title (newValue)
        }
        
    }
    
    /// If `true`, the frame will be tinted with the color specified in ``tintColor``.
    final public var tintColorEnabled: Bool {
        get {
            return is_tint_color_enabled ()
        }
        
        set {
            set_tint_color_enabled (newValue)
        }
        
    }
    
    /// The color of the frame when ``tintColorEnabled`` is `true`.
    final public var tintColor: Color {
        get {
            return get_tint_color ()
        }
        
        set {
            set_tint_color (newValue)
        }
        
    }
    
    /// If `true`, the frame will automatically resize to enclose all attached nodes.
    final public var autoshrink: Bool {
        get {
            return is_autoshrink_enabled ()
        }
        
        set {
            set_autoshrink_enabled (newValue)
        }
        
    }
    
    /// The list of nodes attached to the frame.
    final public var attachedNodes: PackedInt32Array {
        get {
            return get_attached_nodes ()
        }
        
        set {
            set_attached_nodes (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_title: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_title")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_title(_ title: String) {
        let title = GString(title)
        withUnsafePointer(to: title.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_set_title, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_title: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_title")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_title() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_get_title, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_tint_color_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tint_color_enabled")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tint_color_enabled(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_set_tint_color_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_tint_color_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_tint_color_enabled")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_tint_color_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_is_tint_color_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tint_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tint_color")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tint_color(_ color: Color) {
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_set_tint_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tint_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tint_color")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tint_color() -> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_get_tint_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autoshrink_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autoshrink_enabled")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoshrink_enabled(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_set_autoshrink_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_autoshrink_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_autoshrink_enabled")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoshrink_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_is_autoshrink_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_attached_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_attached_node")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Adds a node to the list of nodes attached to the frame. Should not be called directly, use the ``VisualShader/attachNodeToFrame(type:id:frame:)`` method instead.
    public final func addAttachedNode(_ node: Int32) {
        withUnsafePointer(to: node) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_add_attached_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_attached_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_attached_node")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes a node from the list of nodes attached to the frame. Should not be called directly, use the ``VisualShader/detachNodeFromFrame(type:id:)`` method instead.
    public final func removeAttachedNode(_ node: Int32) {
        withUnsafePointer(to: node) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_remove_attached_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_attached_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_attached_nodes")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attached_nodes(_ attachedNodes: PackedInt32Array) {
        withUnsafePointer(to: attachedNodes.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_set_attached_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_attached_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_attached_nodes")
        return withUnsafePointer(to: &VisualShaderNodeFrame.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attached_nodes() -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(VisualShaderNodeFrame.method_get_attached_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

