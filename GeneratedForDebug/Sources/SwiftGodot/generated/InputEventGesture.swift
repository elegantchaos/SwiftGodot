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

/// Abstract base class for touch gestures.
/// 
/// InputEventGestures are sent when a user performs a supported gesture on a touch screen. Gestures can't be emulated using mouse, because they typically require multi-touch.
open class InputEventGesture: InputEventWithModifiers {
    override open class var godotClassName: StringName { "InputEventGesture" }
    
    /* Properties */
    
    /// The local gesture position relative to the ``Viewport``. If used in ``Control/_guiInput(event:)``, the position is relative to the current ``Control`` that received this gesture.
    final public var position: Vector2 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_position")
        return withUnsafePointer(to: &InputEventGesture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position(_ position: Vector2) {
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventGesture.method_set_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_position")
        return withUnsafePointer(to: &InputEventGesture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventGesture.method_get_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

