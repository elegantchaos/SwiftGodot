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

/// A button that brings up a ``ColorPicker`` when pressed.
/// 
/// Encapsulates a ``ColorPicker``, making it accessible by pressing a button. Pressing the button will toggle the ``ColorPicker``'s visibility.
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
/// > Note: By default, the button may not be wide enough for the color preview swatch to be visible. Make sure to set ``Control/customMinimumSize`` to a big enough value to give the button enough space.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``colorChanged``
/// - ``popupClosed``
/// - ``pickerCreated``
open class ColorPickerButton: Button {
    override open class var godotClassName: StringName { "ColorPickerButton" }
    
    /* Properties */
    
    /// The currently selected color.
    final public var color: Color {
        get {
            return get_pick_color ()
        }
        
        set {
            set_pick_color (newValue)
        }
        
    }
    
    /// If `true`, the alpha channel in the displayed ``ColorPicker`` will be visible.
    final public var editAlpha: Bool {
        get {
            return is_editing_alpha ()
        }
        
        set {
            set_edit_alpha (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_pick_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_pick_color")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pick_color(_ color: Color) {
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ColorPickerButton.method_set_pick_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_pick_color: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_pick_color")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pick_color() -> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ColorPickerButton.method_get_pick_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_picker: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_picker")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 331835996)!
            }
            
        }
        
    }()
    
    /// Returns the ``ColorPicker`` that this node toggles.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getPicker() -> ColorPicker? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ColorPickerButton.method_get_picker, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_popup: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_popup")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1322440207)!
            }
            
        }
        
    }()
    
    /// Returns the control's ``PopupPanel`` which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getPopup() -> PopupPanel? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ColorPickerButton.method_get_popup, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_edit_alpha: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_edit_alpha")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_edit_alpha(_ show: Bool) {
        withUnsafePointer(to: show) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ColorPickerButton.method_set_edit_alpha, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_editing_alpha: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_editing_alpha")
        return withUnsafePointer(to: &ColorPickerButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editing_alpha() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ColorPickerButton.method_is_editing_alpha, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ color: Color) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Color (args [0]!)!
                
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
    
    /// Emitted when the color changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.colorChanged.connect { color in
    ///    print ("caught signal")
    /// }
    /// ```
    public var colorChanged: Signal1 { Signal1 (target: self, signalName: "color_changed") }
    
    /// Emitted when the ``ColorPicker`` is closed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.popupClosed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var popupClosed: SimpleSignal { SimpleSignal (target: self, signalName: "popup_closed") }
    
    /// Emitted when the ``ColorPicker`` is created (the button is pressed for the first time).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.pickerCreated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var pickerCreated: SimpleSignal { SimpleSignal (target: self, signalName: "picker_created") }
    
}

