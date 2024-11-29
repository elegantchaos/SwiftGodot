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
/// A handle for a ``Resource``'s unique identifier.
/// 
/// The RID ``Variant`` type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as ``DisplayServer``, ``RenderingServer``, ``TextServer``, etc.
/// 
/// A low-level resource may correspond to a high-level ``Resource``, such as ``Texture`` or ``Mesh``.
/// 
/// > Note: RIDs are only useful during the current session. It won't correspond to a similar resource if sent over a network, or loaded from a file at a later time.
/// 
public class RID: Equatable {
    // Contains a binary blob where this type information is stored
    public var content: ContentType = 0
    // Used to initialize empty types
    public static let zero: ContentType  = 0
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                RID.constructor1(&content, pArgs)
            }
        }
    }
    // Used to construct objects when the underlying built-in's ref count has already been incremented for me
    public required init(alreadyOwnedContent content: ContentType) {
        self.content = content
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_RID, 0)!
    
    /// Constructs an empty ``RID`` with the invalid ID `0`.
    public required init () {
        RID.constructor0(&content, nil)
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_RID, 1)!
    
    /// Constructs a ``RID`` as a copy of the given ``RID``.
    public init (from: RID) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    RID.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    static var method_is_valid: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_valid")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_RID, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if the ``RID`` is not `0`.
    public final func isValid()-> Bool {
        var result: Bool = Bool()
        RID.method_is_valid(&content, nil, &result, 0)
        return result
    }
    
    static var method_get_id: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_id")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_RID, &name.content, 3173160232)!
    }()
    
    /// Returns the ID of the referenced low-level resource.
    public final func getId()-> Int64 {
        var result: Int64 = Int64()
        RID.method_get_id(&content, nil, &result, 0)
        return result
    }
    
    static var operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if both ``RID``s are equal, which means they both refer to the same low-level resource.
    public static func == (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if the ``RID``s are not equal.
    public static func != (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if the ``RID``'s ID is less than `right`'s ID.
    public static func < (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if the ``RID``'s ID is less than or equal to `right`'s ID.
    public static func <= (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if the ``RID``'s ID is greater than `right`'s ID.
    public static func > (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    /// Returns `true` if the ``RID``'s ID is greater than or equal to `right`'s ID.
    public static func >= (lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                RID.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
}

