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

/// A 1D texture that uses colors obtained from a ``Gradient``.
/// 
/// A 1D texture that obtains colors from a ``Gradient`` to fill the texture data. The texture is filled by sampling the gradient for each pixel. Therefore, the texture does not necessarily represent an exact copy of the gradient, as it may miss some colors if there are not enough pixels. See also ``GradientTexture2D``, ``CurveTexture`` and ``CurveXYZTexture``.
open class GradientTexture1D: Texture2D {
    override open class var godotClassName: StringName { "GradientTexture1D" }
    
    /* Properties */
    
    /// The ``Gradient`` used to fill the texture.
    final public var gradient: Gradient? {
        get {
            return get_gradient ()
        }
        
        set {
            set_gradient (newValue)
        }
        
    }
    
    /// The number of color samples that will be obtained from the ``Gradient``.
    final public var width: Int32 {
        get {
            return getWidth ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// If `true`, the generated texture will support high dynamic range (``Image/Format/rgbaf`` format). This allows for glow effects to work if ``Environment/glowEnabled`` is `true`. If `false`, the generated texture will use low dynamic range; overbright colors will be clamped (``Image/Format/rgba8`` format).
    final public var useHdr: Bool {
        get {
            return is_using_hdr ()
        }
        
        set {
            set_use_hdr (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_gradient: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_gradient")
        return withUnsafePointer(to: &GradientTexture1D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2756054477)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gradient(_ gradient: Gradient?) {
        withUnsafePointer(to: gradient?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GradientTexture1D.method_set_gradient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_gradient: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_gradient")
        return withUnsafePointer(to: &GradientTexture1D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132272999)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gradient() -> Gradient? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GradientTexture1D.method_get_gradient, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_width: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_width")
        return withUnsafePointer(to: &GradientTexture1D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width(_ width: Int32) {
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GradientTexture1D.method_set_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_use_hdr: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_hdr")
        return withUnsafePointer(to: &GradientTexture1D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_hdr(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GradientTexture1D.method_set_use_hdr, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_using_hdr: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_using_hdr")
        return withUnsafePointer(to: &GradientTexture1D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_hdr() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GradientTexture1D.method_is_using_hdr, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

