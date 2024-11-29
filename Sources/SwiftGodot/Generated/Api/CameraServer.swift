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

/// Server keeping track of different cameras accessible in Godot.
/// 
/// The ``CameraServer`` keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.
/// 
/// It is notably used to provide AR modules with a video feed from the camera.
/// 
/// > Note: This class is currently only implemented on macOS and iOS. To get a ``CameraFeed`` on iOS, the camera plugin from <a href="https://github.com/godotengine/godot-ios-plugins">godot-ios-plugins</a> is required. On other platforms, no ``CameraFeed``s will be available.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``cameraFeedAdded``
/// - ``cameraFeedRemoved``
open class CameraServer: Object {
    /// The shared instance of this class
    public static var shared: CameraServer = {
        return withUnsafePointer (to: &CameraServer.godotClassName.content) { ptr in
            CameraServer (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "CameraServer" }
    public enum FeedImage: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The RGBA camera image.
        case rgbaImage = 0 // FEED_RGBA_IMAGE
        /// The <a href="https://en.wikipedia.org/wiki/YCbCr">YCbCr</a> camera image.
        // case ycbcrImage = 0 // FEED_YCBCR_IMAGE
        /// The Y component camera image.
        // case yImage = 0 // FEED_Y_IMAGE
        /// The CbCr component camera image.
        case cbcrImage = 1 // FEED_CBCR_IMAGE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .rgbaImage: return ".rgbaImage"
                case .cbcrImage: return ".cbcrImage"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_feed: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 361927068)!
            }
            
        }
        
    }()
    
    /// Returns the ``CameraFeed`` corresponding to the camera with the given `index`.
    public static func getFeed(index: Int32) -> CameraFeed? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_feed_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_feed_count")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number of ``CameraFeed``s registered.
    public static func getFeedCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_feed_count, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_feeds: GDExtensionMethodBindPtr = {
        let methodName = StringName("feeds")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``CameraFeed``s.
    public static func feeds() -> ObjectCollection<CameraFeed> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(method_feeds, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return ObjectCollection<CameraFeed>(content: _result)
    }
    
    fileprivate static var method_add_feed: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3204782488)!
            }
            
        }
        
    }()
    
    /// Adds the camera `feed` to the camera server.
    public static func addFeed(_ feed: CameraFeed?) {
        withUnsafePointer(to: feed?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_add_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_feed: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3204782488)!
            }
            
        }
        
    }()
    
    /// Removes the specified camera `feed`.
    public static func removeFeed(_ feed: CameraFeed?) {
        withUnsafePointer(to: feed?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0]!)!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when a ``CameraFeed`` is added (e.g. a webcam is plugged in).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cameraFeedAdded.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var cameraFeedAdded: Signal1 { Signal1 (target: self, signalName: "camera_feed_added") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal2/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal2/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal2/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal2 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal2 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0]!)!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when a ``CameraFeed`` is removed (e.g. a webcam is unplugged).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cameraFeedRemoved.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var cameraFeedRemoved: Signal2 { Signal2 (target: self, signalName: "camera_feed_removed") }
    
}

