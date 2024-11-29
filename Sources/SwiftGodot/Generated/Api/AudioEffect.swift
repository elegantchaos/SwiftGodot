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

/// Base class for audio effect resources.
/// 
/// The base ``Resource`` for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through ``AudioServer/addBusEffect(busIdx:effect:atPosition:)``, ``AudioServer/removeBusEffect(busIdx:effectIdx:)``, and ``AudioServer/getBusEffect(busIdx:effectIdx:)``.
/// 
/// When applied on a bus, an audio effect creates a corresponding ``AudioEffectInstance``. The instance is directly responsible for manipulating the sound, based on the original audio effect's properties.
/// 
open class AudioEffect: Resource {
    override open class var godotClassName: StringName { "AudioEffect" }
    /* Methods */
    /// Override this method to customize the ``AudioEffectInstance`` created when this effect is applied on a bus in the editor's Audio panel, or through ``AudioServer/addBusEffect(busIdx:effect:atPosition:)``.
    /// 
    /// > Note: It is recommended to keep a reference to the original ``AudioEffect`` in the new instance. Depending on the implementation this allows the effect instance to listen for changes at run-time and be modified accordingly.
    /// 
    @_documentation(visibility: public)
    open func _instantiate() -> AudioEffectInstance? {
        return AudioEffectInstance ()
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_instantiate":
                return _AudioEffect_proxy_instantiate
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AudioEffect_proxy_instantiate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioEffect>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._instantiate ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // AudioEffectInstance
}

