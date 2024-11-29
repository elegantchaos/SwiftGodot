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

/// A container that splits two child controls horizontally or vertically and provides a grabber for adjusting the split ratio.
/// 
/// A container that accepts only two child controls, then arranges them horizontally or vertically and creates a divisor between them. The divisor can be dragged around to change the size relation between the child controls.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``dragged``
open class SplitContainer: Container {
    override open class var godotClassName: StringName { "SplitContainer" }
    public enum DraggerVisibility: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The split dragger is visible when the cursor hovers it.
        case visible = 0 // DRAGGER_VISIBLE
        /// The split dragger is never visible.
        case hidden = 1 // DRAGGER_HIDDEN
        /// The split dragger is never visible and its space collapsed.
        case hiddenCollapsed = 2 // DRAGGER_HIDDEN_COLLAPSED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .visible: return ".visible"
                case .hidden: return ".hidden"
                case .hiddenCollapsed: return ".hiddenCollapsed"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The initial offset of the splitting between the two ``Control``s, with `0` being at the end of the first ``Control``.
    final public var splitOffset: Int32 {
        get {
            return get_split_offset ()
        }
        
        set {
            set_split_offset (newValue)
        }
        
    }
    
    /// If `true`, the area of the first ``Control`` will be collapsed and the dragger will be disabled.
    final public var collapsed: Bool {
        get {
            return is_collapsed ()
        }
        
        set {
            set_collapsed (newValue)
        }
        
    }
    
    /// Determines the dragger's visibility. See ``SplitContainer/DraggerVisibility`` for details.
    final public var draggerVisibility: SplitContainer.DraggerVisibility {
        get {
            return get_dragger_visibility ()
        }
        
        set {
            set_dragger_visibility (newValue)
        }
        
    }
    
    /// If `true`, the ``SplitContainer`` will arrange its children vertically, rather than horizontally.
    /// 
    /// Can't be changed when using ``HSplitContainer`` and ``VSplitContainer``.
    /// 
    final public var vertical: Bool {
        get {
            return is_vertical ()
        }
        
        set {
            set_vertical (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_split_offset(_ offset: Int32) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_split_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_split_offset() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_clamp_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("clamp_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clamps the ``splitOffset`` value to not go outside the currently possible minimal and maximum values.
    public final func clampSplitOffset() {
        gi.object_method_bind_ptrcall(SplitContainer.method_clamp_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_collapsed: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collapsed(_ collapsed: Bool) {
        withUnsafePointer(to: collapsed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_collapsed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_collapsed: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collapsed() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_collapsed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dragger_visibility: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1168273952)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dragger_visibility(_ mode: SplitContainer.DraggerVisibility) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_dragger_visibility: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 967297479)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dragger_visibility() -> SplitContainer.DraggerVisibility {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SplitContainer.method_get_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return SplitContainer.DraggerVisibility (rawValue: _result)!
    }
    
    fileprivate static var method_set_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical(_ vertical: Bool) {
        withUnsafePointer(to: vertical) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_vertical, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_vertical, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ offset: Int64) -> ()) -> Object {
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
    
    /// Emitted when the dragger is dragged by user.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragged.connect { offset in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragged: Signal1 { Signal1 (target: self, signalName: "dragged") }
    
}
