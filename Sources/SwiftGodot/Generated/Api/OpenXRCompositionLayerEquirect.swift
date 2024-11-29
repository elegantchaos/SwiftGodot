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

/// An OpenXR composition layer that is rendered as an internal slice of a sphere.
/// 
/// An OpenXR composition layer that allows rendering a ``SubViewport`` on an internal slice of a sphere.
open class OpenXRCompositionLayerEquirect: OpenXRCompositionLayer {
    override open class var godotClassName: StringName { "OpenXRCompositionLayerEquirect" }
    
    /* Properties */
    
    /// The radius of the sphere.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// The central horizontal angle of the sphere. Used to set the width.
    final public var centralHorizontalAngle: Double {
        get {
            return get_central_horizontal_angle ()
        }
        
        set {
            set_central_horizontal_angle (newValue)
        }
        
    }
    
    /// The upper vertical angle of the sphere. Used (together with ``lowerVerticalAngle``) to set the height.
    final public var upperVerticalAngle: Double {
        get {
            return get_upper_vertical_angle ()
        }
        
        set {
            set_upper_vertical_angle (newValue)
        }
        
    }
    
    /// The lower vertical angle of the sphere. Used (together with ``upperVerticalAngle``) to set the height.
    final public var lowerVerticalAngle: Double {
        get {
            return get_lower_vertical_angle ()
        }
        
        set {
            set_lower_vertical_angle (newValue)
        }
        
    }
    
    /// The number of segments to use in the fallback mesh.
    final public var fallbackSegments: UInt32 {
        get {
            return get_fallback_segments ()
        }
        
        set {
            set_fallback_segments (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_radius")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius(_ radius: Double) {
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_set_radius, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_radius")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_get_radius, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_central_horizontal_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_central_horizontal_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_central_horizontal_angle(_ angle: Double) {
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_set_central_horizontal_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_central_horizontal_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_central_horizontal_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_central_horizontal_angle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_get_central_horizontal_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_upper_vertical_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_upper_vertical_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_upper_vertical_angle(_ angle: Double) {
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_set_upper_vertical_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_upper_vertical_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_upper_vertical_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_upper_vertical_angle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_get_upper_vertical_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_lower_vertical_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_lower_vertical_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lower_vertical_angle(_ angle: Double) {
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_set_lower_vertical_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_lower_vertical_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_lower_vertical_angle")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lower_vertical_angle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_get_lower_vertical_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fallback_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fallback_segments")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fallback_segments(_ segments: UInt32) {
        withUnsafePointer(to: segments) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_set_fallback_segments, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fallback_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fallback_segments")
        return withUnsafePointer(to: &OpenXRCompositionLayerEquirect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fallback_segments() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayerEquirect.method_get_fallback_segments, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

