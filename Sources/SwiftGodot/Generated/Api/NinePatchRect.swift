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

/// A control that displays a texture by keeping its corners intact, but tiling its edges and center.
/// 
/// Also known as 9-slice panels, ``NinePatchRect`` produces clean panels of any size based on a small texture. To do so, it splits the texture in a 3×3 grid. When you scale the node, it tiles the texture's edges horizontally or vertically, tiles the center on both axes, and leaves the corners unchanged.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``textureChanged``
open class NinePatchRect: Control {
    override open class var godotClassName: StringName { "NinePatchRect" }
    public enum AxisStretchMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Stretches the center texture across the NinePatchRect. This may cause the texture to be distorted.
        case stretch = 0 // AXIS_STRETCH_MODE_STRETCH
        /// Repeats the center texture across the NinePatchRect. This won't cause any visible distortion. The texture must be seamless for this to work without displaying artifacts between edges.
        case tile = 1 // AXIS_STRETCH_MODE_TILE
        /// Repeats the center texture across the NinePatchRect, but will also stretch the texture to make sure each tile is visible in full. This may cause the texture to be distorted, but less than ``AxisStretchMode/stretch``. The texture must be seamless for this to work without displaying artifacts between edges.
        case tileFit = 2 // AXIS_STRETCH_MODE_TILE_FIT
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .stretch: return ".stretch"
                case .tile: return ".tile"
                case .tileFit: return ".tileFit"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The node's texture resource.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// If `true`, draw the panel's center. Else, only draw the 9-slice's borders.
    final public var drawCenter: Bool {
        get {
            return is_draw_center_enabled ()
        }
        
        set {
            set_draw_center (newValue)
        }
        
    }
    
    /// Rectangular region of the texture to sample from. If you're working with an atlas, use this property to define the area the 9-slice should use. All other properties are relative to this one. If the rect is empty, NinePatchRect will use the whole texture.
    final public var regionRect: Rect2 {
        get {
            return get_region_rect ()
        }
        
        set {
            set_region_rect (newValue)
        }
        
    }
    
    /// The width of the 9-slice's left column. A margin of 16 means the 9-slice's left corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
    final public var patchMarginLeft: Int32 {
        get {
            return get_patch_margin (Side (rawValue: 0)!)
        }
        
        set {
            set_patch_margin (Side (rawValue: 0)!, newValue)
        }
        
    }
    
    /// The height of the 9-slice's top row. A margin of 16 means the 9-slice's top corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
    final public var patchMarginTop: Int32 {
        get {
            return get_patch_margin (Side (rawValue: 1)!)
        }
        
        set {
            set_patch_margin (Side (rawValue: 1)!, newValue)
        }
        
    }
    
    /// The width of the 9-slice's right column. A margin of 16 means the 9-slice's right corners and side will have a width of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
    final public var patchMarginRight: Int32 {
        get {
            return get_patch_margin (Side (rawValue: 2)!)
        }
        
        set {
            set_patch_margin (Side (rawValue: 2)!, newValue)
        }
        
    }
    
    /// The height of the 9-slice's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
    final public var patchMarginBottom: Int32 {
        get {
            return get_patch_margin (Side (rawValue: 3)!)
        }
        
        set {
            set_patch_margin (Side (rawValue: 3)!, newValue)
        }
        
    }
    
    /// The stretch mode to use for horizontal stretching/tiling. See ``NinePatchRect.AxisStretchMode`` for possible values.
    final public var axisStretchHorizontal: NinePatchRect.AxisStretchMode {
        get {
            return get_h_axis_stretch_mode ()
        }
        
        set {
            set_h_axis_stretch_mode (newValue)
        }
        
    }
    
    /// The stretch mode to use for vertical stretching/tiling. See ``NinePatchRect.AxisStretchMode`` for possible values.
    final public var axisStretchVertical: NinePatchRect.AxisStretchMode {
        get {
            return get_v_axis_stretch_mode ()
        }
        
        set {
            set_v_axis_stretch_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_set_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(NinePatchRect.method_get_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_patch_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_patch_margin")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 437707142)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the size of the margin on the specified ``Side`` to `value` pixels.
    fileprivate final func set_patch_margin(_ margin: Side, _ value: Int32) {
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NinePatchRect.method_set_patch_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_patch_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_patch_margin")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1983885014)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the size of the margin on the specified ``Side``.
    fileprivate final func get_patch_margin(_ margin: Side) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_get_patch_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_region_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_region_rect")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region_rect(_ rect: Rect2) {
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_set_region_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_region_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_region_rect")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_region_rect() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(NinePatchRect.method_get_region_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_draw_center: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_draw_center")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_center(_ drawCenter: Bool) {
        withUnsafePointer(to: drawCenter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_set_draw_center, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_draw_center_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_draw_center_enabled")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_center_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NinePatchRect.method_is_draw_center_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_h_axis_stretch_mode")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3219608417)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_axis_stretch_mode(_ mode: NinePatchRect.AxisStretchMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_set_h_axis_stretch_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_h_axis_stretch_mode")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3317113799)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_axis_stretch_mode() -> NinePatchRect.AxisStretchMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NinePatchRect.method_get_h_axis_stretch_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return NinePatchRect.AxisStretchMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_v_axis_stretch_mode")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3219608417)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_axis_stretch_mode(_ mode: NinePatchRect.AxisStretchMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NinePatchRect.method_set_v_axis_stretch_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_v_axis_stretch_mode")
        return withUnsafePointer(to: &NinePatchRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3317113799)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_axis_stretch_mode() -> NinePatchRect.AxisStretchMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NinePatchRect.method_get_v_axis_stretch_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return NinePatchRect.AxisStretchMode (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted when the node's texture changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textureChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var textureChanged: SimpleSignal { SimpleSignal (target: self, signalName: "texture_changed") }
    
}
