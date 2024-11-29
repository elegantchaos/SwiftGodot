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

/// Helper class to implement a DTLS server.
/// 
/// This class is used to store the state of a DTLS server. Upon ``setup(serverOptions:)`` it converts connected ``PacketPeerUDP`` to ``PacketPeerDTLS`` accepting them via ``takeConnection(udpPeer:)`` as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.
/// 
/// Below a small example of how to use it:
/// 
open class DTLSServer: RefCounted {
    override open class var godotClassName: StringName { "DTLSServer" }
    /* Methods */
    fileprivate static var method_setup: GDExtensionMethodBindPtr = {
        let methodName = StringName("setup")
        return withUnsafePointer(to: &DTLSServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1262296096)!
            }
            
        }
        
    }()
    
    /// Setup the DTLS server to use the given `serverOptions`. See ``TLSOptions/server(key:certificate:)``.
    public final func setup(serverOptions: TLSOptions?) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: serverOptions?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DTLSServer.method_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_take_connection: GDExtensionMethodBindPtr = {
        let methodName = StringName("take_connection")
        return withUnsafePointer(to: &DTLSServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3946580474)!
            }
            
        }
        
    }()
    
    /// Try to initiate the DTLS handshake with the given `udpPeer` which must be already connected (see ``PacketPeerUDP/connectToHost(_:port:)``).
    /// 
    /// > Note: You must check that the state of the return PacketPeerUDP is ``PacketPeerDTLS/Status/handshaking``, as it is normal that 50% of the new connections will be invalid due to cookie exchange.
    /// 
    public final func takeConnection(udpPeer: PacketPeerUDP?) -> PacketPeerDTLS? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: udpPeer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DTLSServer.method_take_connection, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

