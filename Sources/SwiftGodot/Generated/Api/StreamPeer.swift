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

/// Abstract base class for interacting with streams.
/// 
/// StreamPeer is an abstract base class mostly used for stream-based protocols (such as TCP). It provides an API for sending and receiving data through streams as raw data or strings.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class StreamPeer: RefCounted {
    override open class var godotClassName: StringName { "StreamPeer" }
    
    /* Properties */
    
    /// If `true`, this ``StreamPeer`` will using big-endian format for encoding and decoding.
    final public var bigEndian: Bool {
        get {
            return is_big_endian_enabled ()
        }
        
        set {
            set_big_endian (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_put_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_data")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Sends a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an ``GodotError`` code.
    public final func putData(_ data: PackedByteArray) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_put_partial_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_partial_data")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2934048347)!
            }
            
        }
        
    }()
    
    /// Sends a chunk of data through the connection. If all the data could not be sent at once, only part of it will. This function returns two values, an ``GodotError`` code and an integer, describing how much data was actually sent.
    public final func putPartialData(_ data: PackedByteArray) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_partial_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_data")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171824711)!
            }
            
        }
        
    }()
    
    /// Returns a chunk data with the received bytes. The number of bytes to be received can be requested in the `bytes` argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an ``GodotError`` code and a data array.
    public final func getData(bytes: Int32) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: bytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_get_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_partial_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_partial_data")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171824711)!
            }
            
        }
        
    }()
    
    /// Returns a chunk data with the received bytes. The number of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an ``GodotError`` code, and a data array.
    public final func getPartialData(bytes: Int32) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: bytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_get_partial_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_available_bytes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_available_bytes")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bytes this ``StreamPeer`` has available.
    public final func getAvailableBytes() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_available_bytes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_big_endian: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_big_endian")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_big_endian(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_set_big_endian, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_big_endian_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_big_endian_enabled")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_big_endian_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(StreamPeer.method_is_big_endian_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_put_8: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_8")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts a signed byte into the stream.
    public final func put8(value: Int8) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_8, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_u8: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_u8")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts an unsigned byte into the stream.
    public final func putU8(value: UInt8) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_u8, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_16: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_16")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts a signed 16-bit value into the stream.
    public final func put16(value: Int16) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_16, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_u16: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_u16")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts an unsigned 16-bit value into the stream.
    public final func putU16(value: UInt16) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_u16, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_32: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_32")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts a signed 32-bit value into the stream.
    public final func put32(value: Int32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_32, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_u32: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_u32")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts an unsigned 32-bit value into the stream.
    public final func putU32(value: UInt32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_u32, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_64: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_64")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts a signed 64-bit value into the stream.
    public final func put64(value: Int) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_64, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_u64: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_u64")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Puts an unsigned 64-bit value into the stream.
    public final func putU64(value: UInt) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_u64, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_float: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_float")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Puts a single-precision float into the stream.
    public final func putFloat(value: Double) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_float, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_double: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_double")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Puts a double-precision float into the stream.
    public final func putDouble(value: Double) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_double, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_string: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_string")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Puts a zero-terminated ASCII string into the stream prepended by a 32-bit unsigned integer representing its size.
    /// 
    /// > Note: To put an ASCII string without prepending its size, you can use ``putData(_:)``:
    /// 
    public final func putString(value: String) {
        let value = GString(value)
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_string, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_utf8_string: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_utf8_string")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Puts a zero-terminated UTF-8 string into the stream prepended by a 32 bits unsigned integer representing its size.
    /// 
    /// > Note: To put a UTF-8 string without prepending its size, you can use ``putData(_:)``:
    /// 
    public final func putUtf8String(value: String) {
        let value = GString(value)
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_put_utf8_string, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_put_var: GDExtensionMethodBindPtr = {
        let methodName = StringName("put_var")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 738511890)!
            }
            
        }
        
    }()
    
    /// Puts a Variant into the stream. If `fullObjects` is `true` encoding objects is allowed (and can potentially include code).
    /// 
    /// Internally, this uses the same encoding mechanism as the ``@GlobalScope.var_to_bytes`` method.
    /// 
    public final func putVar(value: Variant?, fullObjects: Bool = false) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: fullObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StreamPeer.method_put_var, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_8: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_8")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets a signed byte from the stream.
    public final func get8() -> Int8 {
        var _result: Int8 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_8, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_u8: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_u8")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets an unsigned byte from the stream.
    public final func getU8() -> UInt8 {
        var _result: UInt8 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_u8, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_16: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_16")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets a signed 16-bit value from the stream.
    public final func get16() -> Int16 {
        var _result: Int16 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_16, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_u16: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_u16")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets an unsigned 16-bit value from the stream.
    public final func getU16() -> UInt16 {
        var _result: UInt16 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_u16, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_32: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_32")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets a signed 32-bit value from the stream.
    public final func get32() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_32, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_u32: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_u32")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets an unsigned 32-bit value from the stream.
    public final func getU32() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_u32, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_64: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_64")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets a signed 64-bit value from the stream.
    public final func get64() -> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_64, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_u64: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_u64")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets an unsigned 64-bit value from the stream.
    public final func getU64() -> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_u64, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_float: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_float")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Gets a single-precision float from the stream.
    public final func getFloat() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_float, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_double: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_double")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Gets a double-precision float from the stream.
    public final func getDouble() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(StreamPeer.method_get_double, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_string: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_string")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2309358862)!
            }
            
        }
        
    }()
    
    /// Gets an ASCII string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of ``putString(value:)``.
    public final func getString(bytes: Int32 = -1) -> String {
        let _result = GString ()
        withUnsafePointer(to: bytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_get_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_utf8_string: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_utf8_string")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2309358862)!
            }
            
        }
        
    }()
    
    /// Gets a UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of ``putUtf8String(value:)``.
    public final func getUtf8String(bytes: Int32 = -1) -> String {
        let _result = GString ()
        withUnsafePointer(to: bytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_get_utf8_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_var: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_var")
        return withUnsafePointer(to: &StreamPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3442865206)!
            }
            
        }
        
    }()
    
    /// Gets a Variant from the stream. If `allowObjects` is `true`, decoding objects is allowed.
    /// 
    /// Internally, this uses the same decoding mechanism as the ``@GlobalScope.bytes_to_var`` method.
    /// 
    /// > Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
    /// 
    public final func getVar(allowObjects: Bool = false) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: allowObjects) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeer.method_get_var, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
}
