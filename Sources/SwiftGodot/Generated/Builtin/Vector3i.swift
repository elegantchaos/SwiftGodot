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
/// A 3D vector using integer coordinates.
/// 
/// A 3-element structure that can be used to represent 3D grid coordinates or any other triplet of integers.
/// 
/// It uses integer coordinates and is therefore preferable to ``Vector3`` when exact precision is required. Note that the values are limited to 32 bits, and unlike ``Vector3`` this cannot be configured with an engine build option. Use integer or ``PackedInt64Array`` if 64-bit values are needed.
/// 
/// > Note: In a boolean context, a Vector3i will evaluate to `false` if it's equal to `Vector3i(0, 0, 0)`. Otherwise, a Vector3i will always evaluate to `true`.
/// 
public struct Vector3i: Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Int32
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Int32
    /// The vector's Z component. Also accessible by using the index position `[2]`.
    public var z: Int32
    public enum Axis: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case x = 0 // AXIS_X
        /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case y = 1 // AXIS_Y
        /// Enumerated value for the Z axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case z = 2 // AXIS_Z
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .x: return ".x"
                case .y: return ".y"
                case .z: return ".z"
            }
            
        }
        
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR3I, 0)!
    
    /// Constructs a default-initialized ``Vector3i`` with all components set to `0`.
    public init () {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR3I, 1)!
    
    /// Constructs a ``Vector3i`` as a copy of the given ``Vector3i``.
    public init (from: Vector3i) {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Vector3i.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR3I, 2)!
    
    /// Constructs a new ``Vector3i`` from the given ``Vector3`` by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of ``Vector3/ceil()``, ``Vector3/floor()`` or ``Vector3/round()`` to this constructor instead.
    public init (from: Vector3) {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Vector3i.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor3: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR3I, 3)!
    
    /// Returns a ``Vector3i`` with the given components.
    public init (x: Int32, y: Int32, z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    
    /* Methods */
    
    static var method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("min_axis_index")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 3173160232)!
    }()
    
    /// Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/z``.
    public func minAxisIndex()-> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_min_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("max_axis_index")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 3173160232)!
    }()
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/x``.
    public func maxAxisIndex()-> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_max_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_distance_to: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("distance_to")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 1975170430)!
    }()
    
    /// Returns the distance between this vector and `to`.
    public func distanceTo(_ to: Vector3i)-> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_distance_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("distance_squared_to")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 2947717320)!
    }()
    
    /// Returns the squared distance between this vector and `to`.
    /// 
    /// This method runs faster than ``distanceTo(to:)``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func distanceSquaredTo(_ to: Vector3i)-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_distance_squared_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_length: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("length")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 466405837)!
    }()
    
    /// Returns the length (magnitude) of this vector.
    public func length()-> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_length(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_length_squared: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("length_squared")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 3173160232)!
    }()
    
    /// Returns the squared length (squared magnitude) of this vector.
    /// 
    /// This method runs faster than ``length()``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func lengthSquared()-> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_length_squared(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_sign: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("sign")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 3729604559)!
    }()
    
    /// Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign()-> Vector3i {
        var result: Vector3i = Vector3i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_sign(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_abs: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("abs")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 3729604559)!
    }()
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs()-> Vector3i {
        var result: Vector3i = Vector3i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Vector3i.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_clamp: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clamp")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 1086892323)!
    }()
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Vector3i, max: Vector3i)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Vector3i.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_clampi: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clampi")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 1077216921)!
    }()
    
    /// Returns a new vector with all components clamped between `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clampi(min: Int64, max: Int64)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Vector3i.method_clampi(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_snappedi: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("snappedi")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 2377625641)!
    }()
    
    /// Returns a new vector with each component snapped to the closest multiple of `step`.
    public func snappedi(step: Int64)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_snappedi(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_min: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("min")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 1989319750)!
    }()
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector3i(mini(x, with.x), mini(y, with.y), mini(z, with.z))`.
    public func min(with: Vector3i)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_min(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_mini: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("mini")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 2377625641)!
    }()
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector3i(mini(x, with), mini(y, with), mini(z, with))`.
    public func mini(with: Int64)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_mini(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_max: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("max")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 1989319750)!
    }()
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector3i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z))`.
    public func max(with: Vector3i)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_max(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_maxi: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("maxi")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR3I, &name.content, 2377625641)!
    }()
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector3i(maxi(x, with), maxi(y, with), maxi(z, with))`.
    public func maxi(with: Int64)-> Vector3i {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Vector3i.method_maxi(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    private static var indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    private static var indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
     public subscript (index: Int64) -> Int64 {
        mutating get {
            var result = Int64 ()
            Self.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            Self.indexed_setter (&self, index, &value)
        }
        
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Multiplies each component of the ``Vector3i`` by the given integer.
    public static func * (lhs: Vector3i, rhs: Int64) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Divides each component of the ``Vector3i`` by the given integer.
    public static func / (lhs: Vector3i, rhs: Int64) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Gets the remainder of each component of the ``Vector3i`` with the given integer. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func % (lhs: Vector3i, rhs: Int64) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    /// Multiplies each component of the ``Vector3i`` by the given float. Returns a ``Vector3``.
    /// 
    public static func * (lhs: Vector3i, rhs: Double) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    /// Divides each component of the ``Vector3i`` by the given float. Returns a ``Vector3``.
    /// 
    public static func / (lhs: Vector3i, rhs: Double) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Returns `true` if the vectors are equal.
    public static func == (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Returns `true` if the vectors are not equal.
    public static func != (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Compares two ``Vector3i`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    public static func < (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Compares two ``Vector3i`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    public static func <= (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Compares two ``Vector3i`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    public static func > (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Compares two ``Vector3i`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    public static func >= (lhs: Vector3i, rhs: Vector3i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_15(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Adds each component of the ``Vector3i`` by the components of the given ``Vector3i``.
    /// 
    public static func + (lhs: Vector3i, rhs: Vector3i) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_16(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Subtracts each component of the ``Vector3i`` by the components of the given ``Vector3i``.
    /// 
    public static func - (lhs: Vector3i, rhs: Vector3i) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_17(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Multiplies each component of the ``Vector3i`` by the components of the given ``Vector3i``.
    /// 
    public static func * (lhs: Vector3i, rhs: Vector3i) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_18(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Divides each component of the ``Vector3i`` by the components of the given ``Vector3i``.
    /// 
    public static func / (lhs: Vector3i, rhs: Vector3i) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_19(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_20: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR3I, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    /// Gets the remainder of each component of the ``Vector3i`` with the components of the given ``Vector3i``. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func % (lhs: Vector3i, rhs: Vector3i) -> Vector3i  {
        var result: Vector3i = Vector3i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Vector3i.operator_20(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
    public static let axisX = 0
    /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
    public static let axisY = 1
    /// Enumerated value for the Z axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
    public static let axisZ = 2
    /// Zero vector, a vector with all components set to `0`.
    public static let zero = Vector3i (x: 0, y: 0, z: 0)
    /// One vector, a vector with all components set to `1`.
    public static let one = Vector3i (x: 1, y: 1, z: 1)
    /// Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of ``Vector3/inf``.
    public static let min = Vector3i (x: -2147483648, y: -2147483648, z: -2147483648)
    /// Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of ``Vector3/inf``.
    public static let max = Vector3i (x: 2147483647, y: 2147483647, z: 2147483647)
    /// Left unit vector. Represents the local direction of left, and the global direction of west.
    public static let left = Vector3i (x: -1, y: 0, z: 0)
    /// Right unit vector. Represents the local direction of right, and the global direction of east.
    public static let right = Vector3i (x: 1, y: 0, z: 0)
    /// Up unit vector.
    public static let up = Vector3i (x: 0, y: 1, z: 0)
    /// Down unit vector.
    public static let down = Vector3i (x: 0, y: -1, z: 0)
    /// Forward unit vector. Represents the local direction of forward, and the global direction of north.
    public static let forward = Vector3i (x: 0, y: 0, z: -1)
    /// Back unit vector. Represents the local direction of back, and the global direction of south.
    public static let back = Vector3i (x: 0, y: 0, z: 1)
}
