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
/// A built-in type representing a method or a standalone function.
/// 
/// ``Callable`` is a built-in ``Variant`` type that represents a function. It can either be a method within an ``Object`` instance, or a custom callable used for different purposes (see ``isCustom()``). Like all ``Variant`` types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.
/// 
/// **Example:**
/// 
/// In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an ``Object`` instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling ``getMethod()``.
/// 
/// In GDScript, you can access methods and global functions as ``Callable``s:
/// 
/// > Note: ``GDictionary`` does not support the above due to ambiguity with keys.
/// 
public class Callable: Equatable {
    /// Creates a Callable instance from a Swift function
    /// - Parameter callback: the swift function that receives `Arguments`, and returns a `Variant`
    public init(_ callback: @escaping (borrowing Arguments) -> Variant?) {
        content = CallableWrapper.callableVariantContent(wrapping: callback)
    }
    
    static var destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor (GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    deinit {
        if content != Callable.zero {
            Callable.destructor (&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = (0, 0)
    // Used to initialize empty types
    public static let zero: ContentType  = (0, 0)
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                Callable.constructor1(&content, pArgs)
            }
        }
    }
    // Used to construct objects when the underlying built-in's ref count has already been incremented for me
    public required init(alreadyOwnedContent content: ContentType) {
        self.content = content
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_CALLABLE, 0)!
    
    /// Constructs an empty ``Callable``, with no object nor method bound.
    public required init () {
        Callable.constructor0(&content, nil)
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_CALLABLE, 1)!
    
    /// Constructs a ``Callable`` as a copy of the given ``Callable``.
    public init (from: Callable) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Callable.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_CALLABLE, 2)!
    
    /// Creates a new ``Callable`` for the method named `method` in the specified `object`.
    /// 
    /// > Note: For methods of built-in ``Variant`` types, use ``create(variant:method:)`` instead.
    /// 
    public init (object: Object, method: StringName) {
        withUnsafePointer(to: object.handle) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        Callable.constructor2(&content, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    static var method_create: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("create")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 1709381114)!
    }()
    
    /// Creates a new ``Callable`` for the method named `method` in the specified `variant`. To represent a method of a built-in ``Variant`` type, a custom callable is used (see ``isCustom()``). If `variant` is ``Object``, then a standard callable will be created instead.
    /// 
    /// > Note: This method is always necessary for the ``GDictionary`` type, as property syntax is used to access its entries. You may also use this method when `variant`'s type is not known in advance (for polymorphism).
    /// 
    public static func create(variant: Variant?, method: StringName)-> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: variant.content) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        Callable.method_create(nil, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_callv: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("callv")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 413578926)!
    }()
    
    /// Calls the method represented by this ``Callable``. Unlike ``call()``, this method expects all arguments to be contained inside the `arguments` ``GArray``.
    public final func callv(arguments: GArray)-> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: arguments.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Callable.method_callv(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    static var method_is_null: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_null")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if this ``Callable`` has no target to call the method on.
    public final func isNull()-> Bool {
        var result: Bool = Bool()
        Callable.method_is_null(&content, nil, &result, 0)
        return result
    }
    
    static var method_is_custom: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_custom")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if this ``Callable`` is a custom callable. Custom callables are used:
    /// 
    /// - for binding/unbinding arguments (see ``bind()`` and ``unbind(argcount:)``);
    /// 
    /// - for representing methods of built-in ``Variant`` types (see ``create(variant:method:)``);
    /// 
    /// - for representing global, lambda, and RPC functions in GDScript;
    /// 
    /// - for other purposes in the core, GDExtension, and C#.
    /// 
    public final func isCustom()-> Bool {
        var result: Bool = Bool()
        Callable.method_is_custom(&content, nil, &result, 0)
        return result
    }
    
    static var method_is_standard: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_standard")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if this ``Callable`` is a standard callable. This method is the opposite of ``isCustom()``. Returns `false` if this callable is a lambda function.
    public final func isStandard()-> Bool {
        var result: Bool = Bool()
        Callable.method_is_standard(&content, nil, &result, 0)
        return result
    }
    
    static var method_is_valid: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_valid")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if the callable's object exists and has a valid method name assigned, or is a custom callable.
    public final func isValid()-> Bool {
        var result: Bool = Bool()
        Callable.method_is_valid(&content, nil, &result, 0)
        return result
    }
    
    static var method_get_object_id: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_object_id")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    /// Returns the ID of this ``Callable``'s object (see ``Object/getInstanceId()``).
    public final func getObjectId()-> Int64 {
        var result: Int64 = Int64()
        Callable.method_get_object_id(&content, nil, &result, 0)
        return result
    }
    
    static var method_get_method: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_method")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 1825232092)!
    }()
    
    /// Returns the name of the method represented by this ``Callable``. If the callable is a GDScript lambda function, returns the function's name or `"<anonymous lambda>"`.
    public final func getMethod()-> StringName {
        let result: StringName = StringName()
        Callable.method_get_method(&content, nil, &result.content, 0)
        return result
    }
    
    static var method_get_argument_count: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_argument_count")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    /// Returns the total number of arguments this ``Callable`` should take, including optional arguments. This means that any arguments bound with ``bind()`` are _subtracted_ from the result, and any arguments unbound with ``unbind(argcount:)`` are _added_ to the result.
    public final func getArgumentCount()-> Int64 {
        var result: Int64 = Int64()
        Callable.method_get_argument_count(&content, nil, &result, 0)
        return result
    }
    
    static var method_get_bound_arguments_count: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_bound_arguments_count")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    /// Returns the total amount of arguments bound (or unbound) via successive ``bind()`` or ``unbind(argcount:)`` calls. If the amount of arguments unbound is greater than the ones bound, this function returns a value less than zero.
    public final func getBoundArgumentsCount()-> Int64 {
        var result: Int64 = Int64()
        Callable.method_get_bound_arguments_count(&content, nil, &result, 0)
        return result
    }
    
    static var method_get_bound_arguments: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_bound_arguments")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 4144163970)!
    }()
    
    /// Return the bound arguments (as long as ``getBoundArgumentsCount()`` is greater than zero), or empty (if ``getBoundArgumentsCount()`` is less than or equal to zero).
    public final func getBoundArguments()-> GArray {
        let result: GArray = GArray()
        Callable.method_get_bound_arguments(&content, nil, &result.content, 0)
        return result
    }
    
    static var method_hash: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("hash")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    /// Returns the 32-bit hash value of this ``Callable``'s object.
    /// 
    /// > Note: ``Callable``s with equal content will always produce identical hash values. However, the reverse is not true. Returning identical hash values does _not_ imply the callables are equal, because different callables can have identical hash values due to hash collisions. The engine uses a 32-bit hash algorithm for ``hash()``.
    /// 
    public final func hash()-> Int64 {
        var result: Int64 = Int64()
        Callable.method_hash(&content, nil, &result, 0)
        return result
    }
    
    static var method_bindv: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("bindv")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3564560322)!
    }()
    
    /// Returns a copy of this ``Callable`` with one or more arguments bound, reading them from an array. When called, the bound arguments are passed _after_ the arguments supplied by ``call()``. See also ``unbind(argcount:)``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func bindv(arguments: GArray)-> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: arguments.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Callable.method_bindv(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_unbind: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("unbind")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 755001590)!
    }()
    
    /// Returns a copy of this ``Callable`` with a number of arguments unbound. In other words, when the new callable is called the last few arguments supplied by the user are ignored, according to `argcount`. The remaining arguments are passed to the callable. This allows to use the original callable in a context that attempts to pass more arguments than this callable can handle, e.g. a signal with a fixed number of arguments. See also ``bind()``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func unbind(argcount: Int64)-> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: argcount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Callable.method_unbind(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_call: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("call")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3643564216)!
    }()
    
    /// Calls the method represented by this ``Callable``. Arguments can be passed and should match the method's signature.
    public final func call(_ arguments: Variant?...)-> Variant? {
        var result = Variant.zero
        if arguments.isEmpty {
            Callable.method_call(&content, nil, &result, 0) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    Callable.method_call(&content, pArgs, &result, Int32(arguments.count))
                }
            }
        }
        return Variant(takingOver: result)
    }
    
    static var method_call_deferred: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("call_deferred")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3286317445)!
    }()
    
    /// Calls the method represented by this ``Callable`` in deferred mode, i.e. at the end of the current frame. Arguments can be passed and should match the method's signature.
    /// 
    /// > Note: Deferred calls are processed at idle time. Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.
    /// 
    /// See also ``Object/callDeferred(method:)``.
    /// 
    public final func callDeferred(_ arguments: Variant?...) {
        if arguments.isEmpty {
            Callable.method_call_deferred(&content, nil, nil, 0) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    Callable.method_call_deferred(&content, pArgs, nil, Int32(arguments.count))
                }
            }
        }
    }
    
    static var method_rpc: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("rpc")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3286317445)!
    }()
    
    /// Perform an RPC (Remote Procedure Call) on all connected peers. This is used for multiplayer and is normally not available, unless the function being called has been marked as _RPC_ (using [annotation @GDScript.@rpc] or ``Node/rpcConfig(method:config:)``). Calling this method on unsupported functions will result in an error. See ``Node/rpc(method:)``.
    public final func rpc(_ arguments: Variant?...) {
        if arguments.isEmpty {
            Callable.method_rpc(&content, nil, nil, 0) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    Callable.method_rpc(&content, pArgs, nil, Int32(arguments.count))
                }
            }
        }
    }
    
    static var method_rpc_id: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("rpc_id")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 2270047679)!
    }()
    
    /// Perform an RPC (Remote Procedure Call) on a specific peer ID (see multiplayer documentation for reference). This is used for multiplayer and is normally not available unless the function being called has been marked as _RPC_ (using [annotation @GDScript.@rpc] or ``Node/rpcConfig(method:config:)``). Calling this method on unsupported functions will result in an error. See ``Node/rpcId(peerId:method:)``.
    public final func rpcId(peerId: Int64, _ arguments: Variant?...) {
        let peerId = Variant(peerId)
        withUnsafePointer(to: peerId.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        Callable.method_rpc_id(&content, pArgs, nil, 1)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        Callable.method_rpc_id(&content, pArgs, nil, Int32(1 + arguments.count))
                    }                           
                }
                
            }
        }
        
    }
    
    static var method_bind: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("bind")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3224143119)!
    }()
    
    /// Returns a copy of this ``Callable`` with one or more arguments bound. When called, the bound arguments are passed _after_ the arguments supplied by ``call()``. See also ``unbind(argcount:)``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func bind(_ arguments: Variant?...)-> Callable {
        let result: Callable = Callable()
        if arguments.isEmpty {
            Callable.method_bind(&content, nil, &result.content, 0) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    Callable.method_bind(&content, pArgs, &result.content, Int32(arguments.count))
                }
            }
        }
        return result
    }
    
    static var operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    /// Returns `true` if both ``Callable``s invoke the same custom target.
    public static func == (lhs: Callable, rhs: Callable) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                Callable.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    /// Returns `true` if both ``Callable``s invoke different targets.
    public static func != (lhs: Callable, rhs: Callable) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                Callable.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
}

