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

/// A modification that applies the transforms of ``PhysicalBone2D`` nodes to ``Bone2D`` nodes.
/// 
/// This modification takes the transforms of ``PhysicalBone2D`` nodes and applies them to ``Bone2D`` nodes. This allows the ``Bone2D`` nodes to react to physics thanks to the linked ``PhysicalBone2D`` nodes.
open class SkeletonModification2DPhysicalBones: SkeletonModification2D {
    override open class var godotClassName: StringName { "SkeletonModification2DPhysicalBones" }
    
    /* Properties */
    
    /// The number of ``PhysicalBone2D`` nodes linked in this modification.
    final public var physicalBoneChainLength: Int32 {
        get {
            return get_physical_bone_chain_length ()
        }
        
        set {
            set_physical_bone_chain_length (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_physical_bone_chain_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_physical_bone_chain_length")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_physical_bone_chain_length(_ length: Int32) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_set_physical_bone_chain_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_physical_bone_chain_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_physical_bone_chain_length")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_physical_bone_chain_length() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_get_physical_bone_chain_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_physical_bone_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_physical_bone_node")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the ``PhysicalBone2D`` node at `jointIdx`.
    /// 
    /// > Note: This is just the index used for this modification, not the bone index used in the ``Skeleton2D``.
    /// 
    public final func setPhysicalBoneNode(jointIdx: Int32, physicalbone2dNode: NodePath) {
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: physicalbone2dNode.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_set_physical_bone_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_physical_bone_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_physical_bone_node")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the ``PhysicalBone2D`` node at `jointIdx`.
    public final func getPhysicalBoneNode(jointIdx: Int32) -> NodePath {
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_get_physical_bone_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_fetch_physical_bones: GDExtensionMethodBindPtr = {
        let methodName = StringName("fetch_physical_bones")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Empties the list of ``PhysicalBone2D`` nodes and populates it with all ``PhysicalBone2D`` nodes that are children of the ``Skeleton2D``.
    public final func fetchPhysicalBones() {
        gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_fetch_physical_bones, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_start_simulation: GDExtensionMethodBindPtr = {
        let methodName = StringName("start_simulation")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2787316981)!
            }
            
        }
        
    }()
    
    /// Tell the ``PhysicalBone2D`` nodes to start simulating and interacting with the physics world.
    /// 
    /// Optionally, an array of bone names can be passed to this function, and that will cause only ``PhysicalBone2D`` nodes with those names to start simulating.
    /// 
    public final func startSimulation(bones: VariantCollection<StringName> = VariantCollection<StringName> ()) {
        withUnsafePointer(to: bones.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_start_simulation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_stop_simulation: GDExtensionMethodBindPtr = {
        let methodName = StringName("stop_simulation")
        return withUnsafePointer(to: &SkeletonModification2DPhysicalBones.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2787316981)!
            }
            
        }
        
    }()
    
    /// Tell the ``PhysicalBone2D`` nodes to stop simulating and interacting with the physics world.
    /// 
    /// Optionally, an array of bone names can be passed to this function, and that will cause only ``PhysicalBone2D`` nodes with those names to stop simulating.
    /// 
    public final func stopSimulation(bones: VariantCollection<StringName> = VariantCollection<StringName> ()) {
        withUnsafePointer(to: bones.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DPhysicalBones.method_stop_simulation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}
