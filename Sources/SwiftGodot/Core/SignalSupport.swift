//
//  File.swift
//
//
//  Created by Miguel de Icaza on 4/30/23.
//

class ArgumentPopper {
    var arguments: [Variant]

    init(_ arguments: borrowing Arguments) {
        self.arguments = Array(arguments)
    }

    func pop<T: VariantRepresentable>(as: T.Type) -> T? {
        return T.init(arguments.removeFirst())
    }
}

/// Signal support.
///
///
///
/// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
///
/// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
///
public class GenericSignal<each T: VariantRepresentable> {
    var target: Object
    var signalName: StringName
    init(target: Object, signalName: StringName) {
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
    public func connect(flags: Object.ConnectFlags = [], _ callback: @escaping (_ t: repeat each T) -> Void) -> Object {
        let signalProxy = SignalProxy()
        signalProxy.proxy = { args in
            let popper = ArgumentPopper(args)
            callback(repeat popper.pop(as: (each T).self)!)
        }

        let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
        let r = target.connect(signal: signalName, callable: callable, flags: UInt32(flags.rawValue))
        if r != .ok { print("Warning, error connecting to signal, code: \(r)") }
        return signalProxy
    }

    /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
    public func disconnect(_ token: Object) {
        target.disconnect(signal: signalName, callable: Callable(object: token, method: SignalProxy.proxyName))
    }

    struct StubCallback {
        var c: CheckedContinuation<Void, Never>
        func resume(_ t: repeat each T) { c.resume() }
    }

    /// You can await this property to wait for the signal to be emitted once
    public var emitted: Void {
        get async {
            await withCheckedContinuation { c in
                let signalProxy = SignalProxy()
                signalProxy.proxy = { _ in c.resume() }
                let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
                let r = target.connect(signal: signalName, callable: callable, flags: UInt32(Object.ConnectFlags.oneShot.rawValue))
                if r != .ok { print("Warning, error connecting to signal, code: \(r)") }
            }

        }

    }

}

/// This is a convenience object used as a helper for signals, all it does is
/// register a method with godot called `proxy` that will invoke
/// the callback defined in the public `proxy` variable here.
///
/// Usage:
/// ```
/// let demo = SignalProxy ()
/// demo.proxy = { print ("called back") }
///
/// // Let godot call `demo` and its proxy method.
/// invokeScript ("myDemo.proxy ()", params: ["myDemo", demo])
/// ```
public class SignalProxy: Object {
    public static var proxyName = StringName("proxy")
    static var initClass: Bool = {
        register(type: SignalProxy.self)

        let s = ClassInfo<SignalProxy>(name: "SignalProxy")

        s.registerMethod(name: SignalProxy.proxyName, flags: .default, returnValue: nil, arguments: [], function: SignalProxy.proxyFunc)
        return true
    }()

    /// The code invoked when Godot invokes the `proxy` method on this object.
    public typealias Proxy = (borrowing Arguments) -> Void
    public var proxy: Proxy?

    public required init() {
        let _ = SignalProxy.initClass
        super.init()
    }

    public required init(nativeHandle: UnsafeRawPointer) {
        super.init(nativeHandle: nativeHandle)
    }

    func proxyFunc(args: borrowing Arguments) -> Variant? {
        proxy?(args)
        return nil
    }
}

/// The simple signal is used to raise signals that take no arguments and return no values.
///
/// To connect, you access the connect method, and pass you callback function, like this:
/// ```
/// let myClass = MyClass ()
/// let token = myClass.wakeup.connect {
///    print ("wakeup triggered")
/// }
/// ```
///
/// If you want to disconnect, you call:
/// ```
/// myClass.wakeup.disconnect (token)
/// ```
///
/// To merely wait for one emission of the signal you can await the ``emitted`` property.
///
/// Subclasses that use this, implement signals like this:
///
/// ```
/// class MyClass: Object {
///     // the `wakeup` signal
///     public var wakeup: SimpleSignal { SimpleSignal (self, "wakeup") }
/// }
/// ```
///
public class SimpleSignal {
    var target: Object
    var signalName: StringName

    /// - Parameters:
    ///  - target: the object where we will be operating on, to connect or disconnect the signal
    ///  - name: the name of the signal
    public init(target: Object, signalName: StringName) {
        self.target = target
        self.signalName = signalName
    }

    /// Connects the signal to the specified callback.
    ///
    /// To disconnect, call the disconnect method, with the returned token on success
    ///
    /// Example:
    /// ```swift
    /// node.ready.connect {
    ///     print ("Node is ready")
    /// }
    /// ```
    ///
    /// - Parameters:
    ///  - callback: the method to invoke when the signal is raised
    ///  - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
    /// - Returns: an object token that can be used to disconnect the object from the target.
    @discardableResult
    public func connect(flags: Object.ConnectFlags = [], _ callback: @escaping () -> Void) -> Object {
        let signalProxy = SignalProxy()
        if flags.contains(.oneShot) {
            signalProxy.proxy = { [weak signalProxy] args in
                callback()
                guard let signalProxy else { return }
                signalProxy.proxy = nil
                _ = signalProxy.callDeferred(method: "free")
            }
        } else {
            signalProxy.proxy = { args in
                callback()
            }
        }

        let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
        let r = target.connect(signal: signalName, callable: callable, flags: UInt32(flags.rawValue))
        if r != .ok {
            print("Warning, error connecting to signal \(signalName.description): \(r)")
        }
        return signalProxy
    }

    /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
    public func disconnect(_ token: Object) {
        guard let signalProxy = token as? SignalProxy else { return }
        signalProxy.proxy = nil
        _ = signalProxy.callDeferred(method: "free")
        target.disconnect(signal: signalName, callable: Callable(object: token, method: SignalProxy.proxyName))
    }

    /// You can await this property to wait for the signal to be emitted once
    @MainActor
    public var emitted: Void {
        get async {
            await withCheckedContinuation { c in
                connect(flags: .oneShot) {
                    c.resume()
                }
            }
        }
    }
}
