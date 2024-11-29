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

/// Provides access to AES encryption/decryption of raw data.
/// 
/// This class holds the context information required for encryption and decryption operations with AES (Advanced Encryption Standard). Both AES-ECB and AES-CBC modes are supported.
/// 
open class AESContext: RefCounted {
    override open class var godotClassName: StringName { "AESContext" }
    public enum Mode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// AES electronic codebook encryption mode.
        case ecbEncrypt = 0 // MODE_ECB_ENCRYPT
        /// AES electronic codebook decryption mode.
        case ecbDecrypt = 1 // MODE_ECB_DECRYPT
        /// AES cipher blocker chaining encryption mode.
        case cbcEncrypt = 2 // MODE_CBC_ENCRYPT
        /// AES cipher blocker chaining decryption mode.
        case cbcDecrypt = 3 // MODE_CBC_DECRYPT
        /// Maximum value for the mode enum.
        case max = 4 // MODE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .ecbEncrypt: return ".ecbEncrypt"
                case .ecbDecrypt: return ".ecbDecrypt"
                case .cbcEncrypt: return ".cbcEncrypt"
                case .cbcDecrypt: return ".cbcDecrypt"
                case .max: return ".max"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_start: GDExtensionMethodBindPtr = {
        let methodName = StringName("start")
        return withUnsafePointer(to: &AESContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3122411423)!
            }
            
        }
        
    }()
    
    /// Start the AES context in the given `mode`. A `key` of either 16 or 32 bytes must always be provided, while an `iv` (initialization vector) of exactly 16 bytes, is only needed when `mode` is either ``Mode/cbcEncrypt`` or ``Mode/cbcDecrypt``.
    public final func start(mode: AESContext.Mode, key: PackedByteArray, iv: PackedByteArray = PackedByteArray()) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: iv.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AESContext.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_update: GDExtensionMethodBindPtr = {
        let methodName = StringName("update")
        return withUnsafePointer(to: &AESContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 527836100)!
            }
            
        }
        
    }()
    
    /// Run the desired operation for this AES context. Will return a ``PackedByteArray`` containing the result of encrypting (or decrypting) the given `src`. See ``start(mode:key:iv:)`` for mode of operation.
    /// 
    /// > Note: The size of `src` must be a multiple of 16. Apply some padding if needed.
    /// 
    public final func update(src: PackedByteArray) -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: src.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AESContext.method_update, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_iv_state: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_iv_state")
        return withUnsafePointer(to: &AESContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Get the current IV state for this context (IV gets updated when calling ``update(src:)``). You normally don't need this function.
    /// 
    /// > Note: This function only makes sense when the context is started with ``Mode/cbcEncrypt`` or ``Mode/cbcDecrypt``.
    /// 
    public final func getIvState() -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(AESContext.method_get_iv_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_finish: GDExtensionMethodBindPtr = {
        let methodName = StringName("finish")
        return withUnsafePointer(to: &AESContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Close this AES context so it can be started again. See ``start(mode:key:iv:)``.
    public final func finish() {
        gi.object_method_bind_ptrcall(AESContext.method_finish, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
}

