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
/// A packed array of ``Vector3``s.
/// 
/// An array specifically designed to hold ``Vector3``. Packs data tightly, so it saves memory for large array sizes.
/// 
/// **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. ``PackedVector3Array`` versus `Array``Vector3```). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as ``GArray/map()``. Typed arrays are in turn faster to iterate on and modify than untyped arrays.
/// 
/// > Note: Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use ``duplicate()``. This is _not_ the case for built-in properties and methods. The returned packed array of these are a copies, and changing it will _not_ affect the original value. To update a built-in property you need to modify the returned array, and then assign it to the property again.
/// 
public class PackedVector3Array: Equatable, Collection, RandomAccessCollection {
    static var destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    deinit {
        if content != PackedVector3Array.zero {
            PackedVector3Array.destructor (&content)
        }
        
    }
    
    /// The number of elements in the array
    public var count: Int { Int (size()) }
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
                PackedVector3Array.constructor1(&content, pArgs)
            }
        }
    }
    // Used to construct objects when the underlying built-in's ref count has already been incremented for me
    public required init(alreadyOwnedContent content: ContentType) {
        self.content = content
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 0)!
    
    /// Constructs an empty ``PackedVector3Array``.
    public required init () {
        PackedVector3Array.constructor0(&content, nil)
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 1)!
    
    /// Constructs a ``PackedVector3Array`` as a copy of the given ``PackedVector3Array``.
    public init (from: PackedVector3Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 2)!
    
    /// Constructs a new ``PackedVector3Array``. Optionally, you can pass in a generic ``GArray`` that will be converted.
    /// 
    /// > Note: When initializing a ``PackedVector3Array`` with elements, it must be initialized with an ``GArray`` of ``Vector3`` values:
    /// 
    public init (from: GArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.constructor2(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    static var method_size: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("size")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3173160232)!
    }()
    
    /// Returns the number of elements in the array.
    public final func size()-> Int64 {
        var result: Int64 = Int64()
        PackedVector3Array.method_size(&content, nil, &result, 0)
        return result
    }
    
    static var method_is_empty: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_empty")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if the array is empty.
    public final func isEmpty()-> Bool {
        var result: Bool = Bool()
        PackedVector3Array.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    static var method_set: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("set")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3975343409)!
    }()
    
    /// Changes the ``Vector3`` at the given index.
    public final func set(index: Int64, value: Vector3) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_set(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    static var method_push_back: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("push_back")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3295363524)!
    }()
    
    /// Inserts a ``Vector3`` at the end.
    @discardableResult /* 1: push_back */ 
    public final func pushBack(value: Vector3)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_push_back(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_append: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3295363524)!
    }()
    
    /// Appends an element at the end of the array (alias of ``pushBack(value:)``).
    @discardableResult /* 1: append */ 
    public final func append(_ value: Vector3)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_append(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_append_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 203538016)!
    }()
    
    /// Appends a ``PackedVector3Array`` at the end of this array.
    public final func appendArray(_ array: PackedVector3Array) {
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_append_array(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    static var method_remove_at: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("remove_at")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 2823966027)!
    }()
    
    /// Removes an element from the array by index.
    public final func removeAt(index: Int64) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_remove_at(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    static var method_insert: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("insert")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3892262309)!
    }()
    
    /// Inserts a new element at a given position in the array. The position must be valid, or at the end of the array (`idx == size()`).
    public final func insert(atIndex: Int64, value: Vector3)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: atIndex) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_insert(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_fill: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("fill")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3726392409)!
    }()
    
    /// Assigns the given value to all elements in the array. This can typically be used together with ``resize(newSize:)`` to create an array with a given size and initialized elements.
    public final func fill(value: Vector3) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_fill(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    static var method_resize: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("resize")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 848867239)!
    }()
    
    /// Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling ``resize(newSize:)`` once and assigning the new values is faster than adding new elements one by one.
    @discardableResult /* 1: resize */ 
    public final func resize(newSize: Int64)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: newSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_resize(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_clear: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clear")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Clears the array. This is equivalent to using ``resize(newSize:)`` with a size of `0`.
    public final func clear() {
        PackedVector3Array.method_clear(&content, nil, nil, 0)
    }
    
    static var method_has: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("has")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 1749054343)!
    }()
    
    /// Returns `true` if the array contains `value`.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func has(value: Vector3)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_has(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_reverse: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("reverse")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Reverses the order of the elements in the array.
    public final func reverse() {
        PackedVector3Array.method_reverse(&content, nil, nil, 0)
    }
    
    static var method_slice: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("slice")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 2086131305)!
    }()
    
    /// Returns the slice of the ``PackedVector3Array``, from `begin` (inclusive) to `end` (exclusive), as a new ``PackedVector3Array``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).
    /// 
    public final func slice(begin: Int64, end: Int64 = 2147483647)-> PackedVector3Array {
        let result: PackedVector3Array = PackedVector3Array()
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_slice(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_to_byte_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("to_byte_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 247621236)!
    }()
    
    /// Returns a ``PackedByteArray`` with each vector encoded as bytes.
    public final func toByteArray()-> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        PackedVector3Array.method_to_byte_array(&content, nil, &result.content, 0)
        return result
    }
    
    static var method_sort: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("sort")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Sorts the elements of the array in ascending order.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func sort() {
        PackedVector3Array.method_sort(&content, nil, nil, 0)
    }
    
    static var method_bsearch: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("bsearch")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 219263630)!
    }()
    
    /// Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.
    /// 
    /// > Note: Calling ``bsearch(value:before:)`` on an unsorted array results in unexpected behavior.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func bsearch(value: Vector3, before: Bool = true)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: before) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_bsearch(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_duplicate: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("duplicate")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 2754175465)!
    }()
    
    /// Creates a copy of the array, and returns it.
    public final func duplicate()-> PackedVector3Array {
        let result: PackedVector3Array = PackedVector3Array()
        PackedVector3Array.method_duplicate(&content, nil, &result.content, 0)
        return result
    }
    
    static var method_find: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("find")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3718155780)!
    }()
    
    /// Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func find(value: Vector3, from: Int64 = 0)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_find(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_rfind: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("rfind")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 3718155780)!
    }()
    
    /// Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func rfind(value: Vector3, from: Int64 = -1)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        PackedVector3Array.method_rfind(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_count: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("count")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, &name.content, 194580386)!
    }()
    
    /// Returns the number of times an element is in the array.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.
    /// 
    public final func count(value: Vector3)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    PackedVector3Array.method_count(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    static var operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    /// Returns a new ``PackedVector3Array`` with all vectors in this array inversely transformed (multiplied) by the given ``Transform3D`` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `array * transform` is equivalent to `transform.inverse() * array`. See ``Transform3D/inverse()``.
    /// 
    /// For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * array` can be used instead. See ``Transform3D/affineInverse()``.
    /// 
    public static func * (lhs: PackedVector3Array, rhs: Transform3D) -> PackedVector3Array  {
        let result: PackedVector3Array = PackedVector3Array()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                PackedVector3Array.operator_3(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    /// Returns `true` if contents of both arrays are the same, i.e. they have all equal ``Vector3``s at the corresponding indices.
    public static func == (lhs: PackedVector3Array, rhs: PackedVector3Array) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                PackedVector3Array.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    /// Returns `true` if contents of the arrays differ.
    public static func != (lhs: PackedVector3Array, rhs: PackedVector3Array) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                PackedVector3Array.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    /// Returns a new ``PackedVector3Array`` with contents of `right` added at the end of this array. For better performance, consider using ``appendArray(array:)`` instead.
    public static func + (lhs: PackedVector3Array, rhs: PackedVector3Array) -> PackedVector3Array  {
        let result: PackedVector3Array = PackedVector3Array()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                PackedVector3Array.operator_8(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        Int (size ())
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
    
    public func index(before i: Int) -> Int {
        return i-1
    }
    
}

