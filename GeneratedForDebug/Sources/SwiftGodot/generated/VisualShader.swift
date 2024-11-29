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

/// A custom shader program with a visual editor.
/// 
/// This class provides a graph-like visual editor for creating a ``Shader``. Although ``VisualShader``s do not require coding, they share the same logic with script shaders. They use ``VisualShaderNode``s that can be connected to each other to control the flow of the shader. The visual shader graph is converted to a script shader behind the scenes.
open class VisualShader: Shader {
    override open class var godotClassName: StringName { "VisualShader" }
    public enum GType: Int64, CaseIterable, CustomDebugStringConvertible {
        /// A vertex shader, operating on vertices.
        case vertex = 0 // TYPE_VERTEX
        /// A fragment shader, operating on fragments (pixels).
        case fragment = 1 // TYPE_FRAGMENT
        /// A shader for light calculations.
        case light = 2 // TYPE_LIGHT
        /// A function for the "start" stage of particle shader.
        case start = 3 // TYPE_START
        /// A function for the "process" stage of particle shader.
        case process = 4 // TYPE_PROCESS
        /// A function for the "collide" stage (particle collision handler) of particle shader.
        case collide = 5 // TYPE_COLLIDE
        /// A function for the "start" stage of particle shader, with customized output.
        case startCustom = 6 // TYPE_START_CUSTOM
        /// A function for the "process" stage of particle shader, with customized output.
        case processCustom = 7 // TYPE_PROCESS_CUSTOM
        /// A shader for 3D environment's sky.
        case sky = 8 // TYPE_SKY
        /// A compute shader that runs for each froxel of the volumetric fog map.
        case fog = 9 // TYPE_FOG
        /// Represents the size of the ``VisualShader/Type`` enum.
        case max = 10 // TYPE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .vertex: return ".vertex"
                case .fragment: return ".fragment"
                case .light: return ".light"
                case .start: return ".start"
                case .process: return ".process"
                case .collide: return ".collide"
                case .startCustom: return ".startCustom"
                case .processCustom: return ".processCustom"
                case .sky: return ".sky"
                case .fog: return ".fog"
                case .max: return ".max"
            }
            
        }
        
    }
    
    public enum VaryingMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Varying is passed from `Vertex` function to `Fragment` and `Light` functions.
        case vertexToFragLight = 0 // VARYING_MODE_VERTEX_TO_FRAG_LIGHT
        /// Varying is passed from `Fragment` function to `Light` function.
        case fragToLight = 1 // VARYING_MODE_FRAG_TO_LIGHT
        /// Represents the size of the ``VisualShader/VaryingMode`` enum.
        case max = 2 // VARYING_MODE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .vertexToFragLight: return ".vertexToFragLight"
                case .fragToLight: return ".fragToLight"
                case .max: return ".max"
            }
            
        }
        
    }
    
    public enum VaryingType: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Varying is of type float.
        case float = 0 // VARYING_TYPE_FLOAT
        /// Varying is of type integer.
        case int = 1 // VARYING_TYPE_INT
        /// Varying is of type unsigned integer.
        case uint = 2 // VARYING_TYPE_UINT
        /// Varying is of type ``Vector2``.
        case vector2d = 3 // VARYING_TYPE_VECTOR_2D
        /// Varying is of type ``Vector3``.
        case vector3d = 4 // VARYING_TYPE_VECTOR_3D
        /// Varying is of type ``Vector4``.
        case vector4d = 5 // VARYING_TYPE_VECTOR_4D
        /// Varying is of type [bool].
        case boolean = 6 // VARYING_TYPE_BOOLEAN
        /// Varying is of type ``Transform3D``.
        case transform = 7 // VARYING_TYPE_TRANSFORM
        /// Represents the size of the ``VisualShader/VaryingType`` enum.
        case max = 8 // VARYING_TYPE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .float: return ".float"
                case .int: return ".int"
                case .uint: return ".uint"
                case .vector2d: return ".vector2d"
                case .vector3d: return ".vector3d"
                case .vector4d: return ".vector4d"
                case .boolean: return ".boolean"
                case .transform: return ".transform"
                case .max: return ".max"
            }
            
        }
        
    }
    
    /* Constants */
    /// Indicates an invalid ``VisualShader`` node.
    public static let nodeIdInvalid = -1
    /// Indicates an output node of ``VisualShader``.
    public static let nodeIdOutput = 0
    
    /* Properties */
    
    /// The offset vector of the whole graph.
    final public var graphOffset: Vector2 {
        get {
            return get_graph_offset ()
        }
        
        set {
            set_graph_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_mode")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3978014962)!
            }
            
        }
        
    }()
    
    /// Sets the mode of this shader.
    public final func setMode(_ mode: Shader.Mode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_set_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_node")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1560769431)!
            }
            
        }
        
    }()
    
    /// Adds the specified `node` to the shader.
    public final func addNode(type: VisualShader.GType, node: VisualShaderNode?, position: Vector2, id: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: node?.handle) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: id) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(VisualShader.method_add_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3784670312)!
            }
            
        }
        
    }()
    
    /// Returns the shader node instance with specified `type` and `id`.
    public final func getNode(type: VisualShader.GType, id: Int32) -> VisualShaderNode? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShader.method_get_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_node_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_node_position")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726660721)!
            }
            
        }
        
    }()
    
    /// Sets the position of the specified node.
    public final func setNodePosition(type: VisualShader.GType, id: Int32, position: Vector2) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShader.method_set_node_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_node_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node_position")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2175036082)!
            }
            
        }
        
    }()
    
    /// Returns the position of the specified node within the shader graph.
    public final func getNodePosition(type: VisualShader.GType, id: Int32) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShader.method_get_node_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_node_list: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node_list")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2370592410)!
            }
            
        }
        
    }()
    
    /// Returns the list of all nodes in the shader with the specified type.
    public final func getNodeList(type: VisualShader.GType) -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_get_node_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_valid_node_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_valid_node_id")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 629467342)!
            }
            
        }
        
    }()
    
    /// Returns next valid node ID that can be added to the shader graph.
    public final func getValidNodeId(type: VisualShader.GType) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_get_valid_node_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_remove_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_node")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844050912)!
            }
            
        }
        
    }()
    
    /// Removes the specified node from the shader.
    public final func removeNode(type: VisualShader.GType, id: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShader.method_remove_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_replace_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("replace_node")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3144735253)!
            }
            
        }
        
    }()
    
    /// Replaces the specified node with a node of new class type.
    public final func replaceNode(type: VisualShader.GType, id: Int32, newClass: StringName) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: newClass.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShader.method_replace_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_node_connection: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_node_connection")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3922381898)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified node and port connection exist.
    public final func isNodeConnection(type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: fromNode) { pArg1 in
                withUnsafePointer(to: fromPort) { pArg2 in
                    withUnsafePointer(to: toNode) { pArg3 in
                        withUnsafePointer(to: toPort) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(VisualShader.method_is_node_connection, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_can_connect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("can_connect_nodes")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3922381898)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified nodes and ports can be connected together.
    public final func canConnectNodes(type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: fromNode) { pArg1 in
                withUnsafePointer(to: fromPort) { pArg2 in
                    withUnsafePointer(to: toNode) { pArg3 in
                        withUnsafePointer(to: toPort) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(VisualShader.method_can_connect_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_connect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("connect_nodes")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3081049573)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports.
    public final func connectNodes(type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: fromNode) { pArg1 in
                withUnsafePointer(to: fromPort) { pArg2 in
                    withUnsafePointer(to: toNode) { pArg3 in
                        withUnsafePointer(to: toPort) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(VisualShader.method_connect_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_disconnect_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("disconnect_nodes")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2268060358)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports.
    public final func disconnectNodes(type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: fromNode) { pArg1 in
                withUnsafePointer(to: fromPort) { pArg2 in
                    withUnsafePointer(to: toNode) { pArg3 in
                        withUnsafePointer(to: toPort) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(VisualShader.method_disconnect_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_connect_nodes_forced: GDExtensionMethodBindPtr = {
        let methodName = StringName("connect_nodes_forced")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2268060358)!
            }
            
        }
        
    }()
    
    /// Connects the specified nodes and ports, even if they can't be connected. Such connection is invalid and will not function properly.
    public final func connectNodesForced(type: VisualShader.GType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: fromNode) { pArg1 in
                withUnsafePointer(to: fromPort) { pArg2 in
                    withUnsafePointer(to: toNode) { pArg3 in
                        withUnsafePointer(to: toPort) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(VisualShader.method_connect_nodes_forced, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_node_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_node_connections")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1441964831)!
            }
            
        }
        
    }()
    
    /// Returns the list of connected nodes with the specified type.
    public final func getNodeConnections(type: VisualShader.GType) -> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_get_node_connections, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return VariantCollection<GDictionary>(content: _result)
    }
    
    fileprivate static var method_set_graph_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_graph_offset")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_graph_offset(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_set_graph_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_graph_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_graph_offset")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_graph_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(VisualShader.method_get_graph_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_attach_node_to_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("attach_node_to_frame")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2479945279)!
            }
            
        }
        
    }()
    
    /// Attaches the given node to the given frame.
    public final func attachNodeToFrame(type: VisualShader.GType, id: Int32, frame: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: frame) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShader.method_attach_node_to_frame, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_detach_node_from_frame: GDExtensionMethodBindPtr = {
        let methodName = StringName("detach_node_from_frame")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844050912)!
            }
            
        }
        
    }()
    
    /// Detaches the given node from the frame it is attached to.
    public final func detachNodeFromFrame(type: VisualShader.GType, id: Int32) {
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShader.method_detach_node_from_frame, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_varying")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2084110726)!
            }
            
        }
        
    }()
    
    /// Adds a new varying value node to the shader.
    public final func addVarying(name: String, mode: VisualShader.VaryingMode, type: VisualShader.VaryingType) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: type.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShader.method_add_varying, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_varying")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes a varying value node with the given `name`. Prints an error if a node with this name is not found.
    public final func removeVarying(name: String) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_remove_varying, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_varying: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_varying")
        return withUnsafePointer(to: &VisualShader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the shader has a varying with the given `name`.
    public final func hasVarying(name: String) -> Bool {
        var _result: Bool = false
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShader.method_has_varying, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

