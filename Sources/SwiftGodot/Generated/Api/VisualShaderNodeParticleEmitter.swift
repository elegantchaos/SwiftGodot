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

/// A base class for particle emitters.
/// 
/// Particle emitter nodes can be used in "start" step of particle shaders and they define the starting position of the particles. Connect them to the Position output port.
open class VisualShaderNodeParticleEmitter: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeParticleEmitter" }
    
    /* Properties */
    
    /// If `true`, the result of this emitter is projected to 2D space. By default it is `false` and meant for use in 3D space.
    final public var mode2d: Bool {
        get {
            return is_mode_2d ()
        }
        
        set {
            set_mode_2d (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mode_2d: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_mode_2d")
        return withUnsafePointer(to: &VisualShaderNodeParticleEmitter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mode_2d(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeParticleEmitter.method_set_mode_2d, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_mode_2d: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_mode_2d")
        return withUnsafePointer(to: &VisualShaderNodeParticleEmitter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_mode_2d() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeParticleEmitter.method_is_mode_2d, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

