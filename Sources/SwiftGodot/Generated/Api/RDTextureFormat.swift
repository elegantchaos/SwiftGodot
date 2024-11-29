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

/// Texture format (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDTextureFormat: RefCounted {
    override open class var godotClassName: StringName { "RDTextureFormat" }
    
    /* Properties */
    
    /// The texture's pixel data format.
    final public var format: RenderingDevice.DataFormat {
        get {
            return get_format ()
        }
        
        set {
            set_format (newValue)
        }
        
    }
    
    /// The texture's width (in pixels).
    final public var width: UInt32 {
        get {
            return get_width ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// The texture's height (in pixels).
    final public var height: UInt32 {
        get {
            return get_height ()
        }
        
        set {
            set_height (newValue)
        }
        
    }
    
    /// The texture's depth (in pixels). This is always `1` for 2D textures.
    final public var depth: UInt32 {
        get {
            return get_depth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /// The number of layers in the texture. Only relevant for 2D texture arrays.
    final public var arrayLayers: UInt32 {
        get {
            return get_array_layers ()
        }
        
        set {
            set_array_layers (newValue)
        }
        
    }
    
    /// The number of mipmaps available in the texture.
    final public var mipmaps: UInt32 {
        get {
            return get_mipmaps ()
        }
        
        set {
            set_mipmaps (newValue)
        }
        
    }
    
    /// The texture type.
    final public var textureType: RenderingDevice.TextureType {
        get {
            return get_texture_type ()
        }
        
        set {
            set_texture_type (newValue)
        }
        
    }
    
    /// The number of samples used when sampling the texture.
    final public var samples: RenderingDevice.TextureSamples {
        get {
            return get_samples ()
        }
        
        set {
            set_samples (newValue)
        }
        
    }
    
    /// The texture's usage bits, which determine what can be done using the texture.
    final public var usageBits: RenderingDevice.TextureUsageBits {
        get {
            return get_usage_bits ()
        }
        
        set {
            set_usage_bits (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_format")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format(_ pMember: RenderingDevice.DataFormat) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_format, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_format")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format() -> RenderingDevice.DataFormat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_format, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static var method_set_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_width")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_width")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_width() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_width, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_height: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_height")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_height, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_height")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_height, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_depth, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_depth, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_array_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_array_layers")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_array_layers(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_array_layers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_array_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_array_layers")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_array_layers() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_array_layers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mipmaps: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_mipmaps")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mipmaps(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_mipmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_mipmaps: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_mipmaps")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mipmaps() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_mipmaps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_texture_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture_type")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 652343381)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_type(_ pMember: RenderingDevice.TextureType) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_texture_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture_type")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4036357416)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_type() -> RenderingDevice.TextureType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_texture_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureType (rawValue: _result)!
    }
    
    fileprivate static var method_set_samples: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_samples")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3774171498)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_samples(_ pMember: RenderingDevice.TextureSamples) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_samples, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_samples: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_samples")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407791724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_samples() -> RenderingDevice.TextureSamples {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_samples, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSamples (rawValue: _result)!
    }
    
    fileprivate static var method_set_usage_bits: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_usage_bits")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 245642367)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_usage_bits(_ pMember: RenderingDevice.TextureUsageBits) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_set_usage_bits, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_usage_bits: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_usage_bits")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1313398998)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_usage_bits() -> RenderingDevice.TextureUsageBits {
        var _result: RenderingDevice.TextureUsageBits = RenderingDevice.TextureUsageBits ()
        gi.object_method_bind_ptrcall(RDTextureFormat.method_get_usage_bits, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_shareable_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_shareable_format")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    /// 
    public final func addShareableFormat(_ format: RenderingDevice.DataFormat) {
        withUnsafePointer(to: format.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_add_shareable_format, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_shareable_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_shareable_format")
        return withUnsafePointer(to: &RDTextureFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    /// 
    public final func removeShareableFormat(_ format: RenderingDevice.DataFormat) {
        withUnsafePointer(to: format.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureFormat.method_remove_shareable_format, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

