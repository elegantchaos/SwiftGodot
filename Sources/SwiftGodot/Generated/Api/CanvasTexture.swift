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

/// Texture with optional normal and specular maps for use in 2D rendering.
/// 
/// ``CanvasTexture`` is an alternative to ``ImageTexture`` for 2D rendering. It allows using normal maps and specular maps in any node that inherits from ``CanvasItem``. ``CanvasTexture`` also allows overriding the texture's filter and repeat mode independently of the node's properties (or the project settings).
/// 
/// > Note: ``CanvasTexture`` cannot be used in 3D. It will not display correctly when applied to any ``VisualInstance3D``, such as ``Sprite3D`` or ``Decal``. For physically-based materials in 3D, use ``BaseMaterial3D`` instead.
/// 
open class CanvasTexture: Texture2D {
    override open class var godotClassName: StringName { "CanvasTexture" }
    
    /* Properties */
    
    /// The diffuse (color) texture to use. This is the main texture you want to set in most cases.
    final public var diffuseTexture: Texture2D? {
        get {
            return get_diffuse_texture ()
        }
        
        set {
            set_diffuse_texture (newValue)
        }
        
    }
    
    /// The normal map texture to use. Only has a visible effect if ``Light2D``s are affecting this ``CanvasTexture``.
    /// 
    /// > Note: Godot expects the normal map to use X+, Y+, and Z+ coordinates. See <a href="http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates">this page</a> for a comparison of normal map coordinates expected by popular engines.
    /// 
    final public var normalTexture: Texture2D? {
        get {
            return get_normal_texture ()
        }
        
        set {
            set_normal_texture (newValue)
        }
        
    }
    
    /// The specular map to use for ``Light2D`` specular reflections. This should be a grayscale or colored texture, with brighter areas resulting in a higher ``specularShininess`` value. Using a colored ``specularTexture`` allows controlling specular shininess on a per-channel basis. Only has a visible effect if ``Light2D``s are affecting this ``CanvasTexture``.
    final public var specularTexture: Texture2D? {
        get {
            return get_specular_texture ()
        }
        
        set {
            set_specular_texture (newValue)
        }
        
    }
    
    /// The multiplier for specular reflection colors. The ``Light2D``'s color is also taken into account when determining the reflection color. Only has a visible effect if ``Light2D``s are affecting this ``CanvasTexture``.
    final public var specularColor: Color {
        get {
            return get_specular_color ()
        }
        
        set {
            set_specular_color (newValue)
        }
        
    }
    
    /// The specular exponent for ``Light2D`` specular reflections. Higher values result in a more glossy/"wet" look, with reflections becoming more localized and less visible overall. The default value of `1.0` disables specular reflections entirely. Only has a visible effect if ``Light2D``s are affecting this ``CanvasTexture``.
    final public var specularShininess: Double {
        get {
            return get_specular_shininess ()
        }
        
        set {
            set_specular_shininess (newValue)
        }
        
    }
    
    /// The texture filtering mode to use when drawing this ``CanvasTexture``.
    final public var textureFilter: CanvasItem.TextureFilter {
        get {
            return get_texture_filter ()
        }
        
        set {
            set_texture_filter (newValue)
        }
        
    }
    
    /// The texture repeat mode to use when drawing this ``CanvasTexture``.
    final public var textureRepeat: CanvasItem.TextureRepeat {
        get {
            return get_texture_repeat ()
        }
        
        set {
            set_texture_repeat (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_diffuse_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_diffuse_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_diffuse_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_diffuse_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_diffuse_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_diffuse_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_diffuse_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_diffuse_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_normal_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_normal_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normal_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_normal_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_normal_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_normal_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normal_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_normal_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_specular_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_specular_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_specular_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_specular_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_specular_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_specular_texture")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_specular_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_specular_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_specular_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_specular_color")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_specular_color(_ color: Color) {
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_specular_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_specular_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_specular_color")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_specular_color() -> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_specular_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_specular_shininess: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_specular_shininess")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_specular_shininess(_ shininess: Double) {
        withUnsafePointer(to: shininess) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_specular_shininess, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_specular_shininess: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_specular_shininess")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_specular_shininess() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_specular_shininess, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_texture_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture_filter")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1037999706)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_filter(_ filter: CanvasItem.TextureFilter) {
        withUnsafePointer(to: filter.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_texture_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture_filter")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121960042)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_filter() -> CanvasItem.TextureFilter {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_texture_filter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CanvasItem.TextureFilter (rawValue: _result)!
    }
    
    fileprivate static var method_set_texture_repeat: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture_repeat")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1716472974)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_repeat(_ `repeat`: CanvasItem.TextureRepeat) {
        withUnsafePointer(to: `repeat`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasTexture.method_set_texture_repeat, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture_repeat: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture_repeat")
        return withUnsafePointer(to: &CanvasTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2667158319)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_repeat() -> CanvasItem.TextureRepeat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasTexture.method_get_texture_repeat, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CanvasItem.TextureRepeat (rawValue: _result)!
    }
    
}

