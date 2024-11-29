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

/// Virtual base class for applying visual properties to an object, such as color and roughness.
/// 
/// ``Material`` is a base resource used for coloring and shading geometry. All materials inherit from it and almost all ``VisualInstance3D`` derived nodes carry a ``Material``. A few flags and parameters are shared between all material types and are configured here.
/// 
/// Importantly, you can inherit from ``Material`` to create your own custom material type in script or in GDExtension.
/// 
open class Material: Resource {
    override open class var godotClassName: StringName { "Material" }
    /* Constants */
    /// Maximum value for the ``renderPriority`` parameter.
    public static let renderPriorityMax = 127
    /// Minimum value for the ``renderPriority`` parameter.
    public static let renderPriorityMin = -128
    
    /* Properties */
    
    /// Sets the render priority for objects in 3D scenes. Higher priority objects will be sorted in front of lower priority objects. In other words, all objects with ``renderPriority`` `1` will render before all objects with ``renderPriority`` `0`.
    /// 
    /// > Note: This only applies to ``StandardMaterial3D``s and ``ShaderMaterial``s with type "Spatial".
    /// 
    /// > Note: This will not impact how transparent objects are sorted relative to opaque objects or how dynamic meshes will be sorted relative to other opaque meshes. This is because all transparent objects are drawn after all opaque objects and all dynamic opaque meshes are drawn before other opaque meshes.
    /// 
    final public var renderPriority: Int32 {
        get {
            return get_render_priority ()
        }
        
        set {
            set_render_priority (newValue)
        }
        
    }
    
    /// Sets the ``Material`` to be used for the next pass. This renders the object again using a different material.
    /// 
    /// > Note: ``nextPass`` materials are not necessarily drawn immediately after the source ``Material``. Draw order is determined by material properties, ``renderPriority``, and distance to camera.
    /// 
    /// > Note: This only applies to ``StandardMaterial3D``s and ``ShaderMaterial``s with type "Spatial".
    /// 
    final public var nextPass: Material? {
        get {
            return get_next_pass ()
        }
        
        set {
            set_next_pass (newValue)
        }
        
    }
    
    /* Methods */
    /// Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools. Used to access the RID of the ``Material``'s ``Shader``.
    @_documentation(visibility: public)
    open func _getShaderRid() -> RID {
        return RID ()
    }
    
    /// Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools.
    @_documentation(visibility: public)
    open func _getShaderMode() -> Shader.Mode {
        return Shader.Mode(rawValue: 0)!
    }
    
    /// Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if ``nextPass`` should be shown in the editor or not.
    @_documentation(visibility: public)
    open func _canDoNextPass() -> Bool {
        return false
    }
    
    /// Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if ``renderPriority`` should be shown in the editor or not.
    @_documentation(visibility: public)
    open func _canUseRenderPriority() -> Bool {
        return false
    }
    
    fileprivate static var method_set_next_pass: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_next_pass")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_next_pass(_ nextPass: Material?) {
        withUnsafePointer(to: nextPass?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Material.method_set_next_pass, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_next_pass: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_next_pass")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_next_pass() -> Material? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Material.method_get_next_pass, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_render_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_render_priority")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_render_priority(_ priority: Int32) {
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Material.method_set_render_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_render_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_render_priority")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_render_priority() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Material.method_get_render_priority, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_inspect_native_shader_code: GDExtensionMethodBindPtr = {
        let methodName = StringName("inspect_native_shader_code")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code.
    public final func inspectNativeShaderCode() {
        gi.object_method_bind_ptrcall(Material.method_inspect_native_shader_code, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_create_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_placeholder")
        return withUnsafePointer(to: &Material.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderMaterial``).
    public final func createPlaceholder() -> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Material.method_create_placeholder, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_do_next_pass":
                return _Material_proxy_can_do_next_pass
            case "_can_use_render_priority":
                return _Material_proxy_can_use_render_priority
            case "_get_shader_mode":
                return _Material_proxy_get_shader_mode
            case "_get_shader_rid":
                return _Material_proxy_get_shader_rid
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _Material_proxy_can_do_next_pass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Material>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._canDoNextPass ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _Material_proxy_can_use_render_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Material>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._canUseRenderPriority ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _Material_proxy_get_shader_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Material>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getShaderMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _Material_proxy_get_shader_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<Material>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getShaderRid ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

