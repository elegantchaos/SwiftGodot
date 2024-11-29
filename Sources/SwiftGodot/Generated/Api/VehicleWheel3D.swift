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

/// A 3D physics body for a ``VehicleBody3D`` that simulates the behavior of a wheel.
/// 
/// A node used as a child of a ``VehicleBody3D`` parent to simulate the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.
/// 
/// > Note: This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may need to write your own physics integration using another ``PhysicsBody3D`` class.
/// 
open class VehicleWheel3D: Node3D {
    override open class var godotClassName: StringName { "VehicleWheel3D" }
    
    /* Properties */
    
    /// Accelerates the wheel by applying an engine force. The wheel is only sped up if it is in contact with a surface. The ``RigidBody3D/mass`` of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.
    /// 
    /// > Note: The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
    /// 
    /// A negative value will result in the wheel reversing.
    /// 
    final public var engineForce: Double {
        get {
            return get_engine_force ()
        }
        
        set {
            set_engine_force (newValue)
        }
        
    }
    
    /// Slows down the wheel by applying a braking force. The wheel is only slowed down if it is in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the ``RigidBody3D/mass`` of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
    final public var brake: Double {
        get {
            return get_brake ()
        }
        
        set {
            set_brake (newValue)
        }
        
    }
    
    /// The steering angle for the wheel, in radians. Setting this to a non-zero value will result in the vehicle turning when it's moving.
    final public var steering: Double {
        get {
            return get_steering ()
        }
        
        set {
            set_steering (newValue)
        }
        
    }
    
    /// If `true`, this wheel transfers engine force to the ground to propel the vehicle forward. This value is used in conjunction with ``VehicleBody3D/engineForce`` and ignored if you are using the per-wheel ``engineForce`` value instead.
    final public var useAsTraction: Bool {
        get {
            return is_used_as_traction ()
        }
        
        set {
            set_use_as_traction (newValue)
        }
        
    }
    
    /// If `true`, this wheel will be turned when the car steers. This value is used in conjunction with ``VehicleBody3D/steering`` and ignored if you are using the per-wheel ``steering`` value instead.
    final public var useAsSteering: Bool {
        get {
            return is_used_as_steering ()
        }
        
        set {
            set_use_as_steering (newValue)
        }
        
    }
    
    /// This value affects the roll of your vehicle. If set to 1.0 for all wheels, your vehicle will resist body roll, while a value of 0.0 will be prone to rolling over.
    final public var wheelRollInfluence: Double {
        get {
            return get_roll_influence ()
        }
        
        set {
            set_roll_influence (newValue)
        }
        
    }
    
    /// The radius of the wheel in meters.
    final public var wheelRadius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// This is the distance in meters the wheel is lowered from its origin point. Don't set this to 0.0 and move the wheel into position, instead move the origin point of your wheel (the gizmo in Godot) to the position the wheel will take when bottoming out, then use the rest length to move the wheel down to the position it should be in when the car is in rest.
    final public var wheelRestLength: Double {
        get {
            return get_suspension_rest_length ()
        }
        
        set {
            set_suspension_rest_length (newValue)
        }
        
    }
    
    /// This determines how much grip this wheel has. It is combined with the friction setting of the surface the wheel is in contact with. 0.0 means no grip, 1.0 is normal grip. For a drift car setup, try setting the grip of the rear wheels slightly lower than the front wheels, or use a lower value to simulate tire wear.
    /// 
    /// It's best to set this to 1.0 when starting out.
    /// 
    final public var wheelFrictionSlip: Double {
        get {
            return get_friction_slip ()
        }
        
        set {
            set_friction_slip (newValue)
        }
        
    }
    
    /// This is the distance the suspension can travel. As Godot units are equivalent to meters, keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car.
    final public var suspensionTravel: Double {
        get {
            return get_suspension_travel ()
        }
        
        set {
            set_suspension_travel (newValue)
        }
        
    }
    
    /// This value defines the stiffness of the suspension. Use a value lower than 50 for an off-road car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.
    final public var suspensionStiffness: Double {
        get {
            return get_suspension_stiffness ()
        }
        
        set {
            set_suspension_stiffness (newValue)
        }
        
    }
    
    /// The maximum force the spring can resist. This value should be higher than a quarter of the ``RigidBody3D/mass`` of the ``VehicleBody3D`` or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3× to 4× this number.
    final public var suspensionMaxForce: Double {
        get {
            return get_suspension_max_force ()
        }
        
        set {
            set_suspension_max_force (newValue)
        }
        
    }
    
    /// The damping applied to the spring when the spring is being compressed. This value should be between 0.0 (no damping) and 1.0. A value of 0.0 means the car will keep bouncing as the spring keeps its energy. A good value for this is around 0.3 for a normal car, 0.5 for a race car.
    final public var dampingCompression: Double {
        get {
            return get_damping_compression ()
        }
        
        set {
            set_damping_compression (newValue)
        }
        
    }
    
    /// The damping applied to the spring when relaxing. This value should be between 0.0 (no damping) and 1.0. This value should always be slightly higher than the ``dampingCompression`` property. For a ``dampingCompression`` value of 0.3, try a relaxation value of 0.5.
    final public var dampingRelaxation: Double {
        get {
            return get_damping_relaxation ()
        }
        
        set {
            set_damping_relaxation (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_radius")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_radius, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_radius")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_radius, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_suspension_rest_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_suspension_rest_length")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suspension_rest_length(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_suspension_rest_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_suspension_rest_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_suspension_rest_length")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suspension_rest_length() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_suspension_rest_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_suspension_travel: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_suspension_travel")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suspension_travel(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_suspension_travel, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_suspension_travel: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_suspension_travel")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suspension_travel() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_suspension_travel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_suspension_stiffness: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_suspension_stiffness")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suspension_stiffness(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_suspension_stiffness, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_suspension_stiffness: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_suspension_stiffness")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suspension_stiffness() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_suspension_stiffness, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_suspension_max_force: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_suspension_max_force")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suspension_max_force(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_suspension_max_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_suspension_max_force: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_suspension_max_force")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suspension_max_force() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_suspension_max_force, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_damping_compression: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_damping_compression")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_damping_compression(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_damping_compression, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_damping_compression: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_damping_compression")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_damping_compression() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_damping_compression, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_damping_relaxation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_damping_relaxation")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_damping_relaxation(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_damping_relaxation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_damping_relaxation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_damping_relaxation")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_damping_relaxation() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_damping_relaxation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_as_traction: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_as_traction")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_as_traction(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_use_as_traction, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_used_as_traction: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_used_as_traction")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_used_as_traction() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_is_used_as_traction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_as_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_as_steering")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_as_steering(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_use_as_steering, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_used_as_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_used_as_steering")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_used_as_steering() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_is_used_as_steering, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_friction_slip: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_friction_slip")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_friction_slip(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_friction_slip, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_friction_slip: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_friction_slip")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_friction_slip() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_friction_slip, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_in_contact: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_in_contact")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this wheel is in contact with a surface.
    public final func isInContact() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_is_in_contact, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_contact_body: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_contact_body")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 151077316)!
            }
            
        }
        
    }()
    
    /// Returns the contacting body node if valid in the tree, as ``Node3D``. At the moment, ``GridMap`` is not supported so the node will be always of type ``PhysicsBody3D``.
    /// 
    /// Returns `null` if the wheel is not in contact with a surface, or the contact body is not a ``PhysicsBody3D``.
    /// 
    public final func getContactBody() -> Node3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_contact_body, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_roll_influence: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_roll_influence")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_roll_influence(_ rollInfluence: Double) {
        withUnsafePointer(to: rollInfluence) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_roll_influence, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_roll_influence: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_roll_influence")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_roll_influence() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_roll_influence, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_skidinfo: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_skidinfo")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is skidding (the wheel has lost grip, e.g. icy terrain), 1.0 means not skidding (the wheel has full grip, e.g. dry asphalt road).
    public final func getSkidinfo() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_skidinfo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_rpm: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rpm")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the rotational speed of the wheel in revolutions per minute.
    public final func getRpm() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_rpm, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_engine_force: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_engine_force")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_engine_force(_ engineForce: Double) {
        withUnsafePointer(to: engineForce) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_engine_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_engine_force: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_engine_force")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_engine_force() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_engine_force, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_brake: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_brake")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_brake(_ brake: Double) {
        withUnsafePointer(to: brake) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_brake, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_brake: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_brake")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_brake() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_brake, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_steering")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_steering(_ steering: Double) {
        withUnsafePointer(to: steering) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VehicleWheel3D.method_set_steering, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_steering: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_steering")
        return withUnsafePointer(to: &VehicleWheel3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_steering() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VehicleWheel3D.method_get_steering, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
