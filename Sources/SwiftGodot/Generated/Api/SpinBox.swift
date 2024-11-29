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

/// An input field for numbers.
/// 
/// ``SpinBox`` is a numerical input text field. It allows entering integers and floating-point numbers.
/// 
/// **Example:**
/// 
/// The above code will create a ``SpinBox``, disable context menu on it and set the text alignment to right.
/// 
/// See ``Range`` class for more options over the ``SpinBox``.
/// 
/// > Note: With the ``SpinBox``'s context menu disabled, you can right-click the bottom half of the spinbox to set the value to its minimum, while right-clicking the top half sets the value to its maximum.
/// 
/// > Note: ``SpinBox`` relies on an underlying ``LineEdit`` node. To theme a ``SpinBox``'s background, add theme items for ``LineEdit`` and customize them.
/// 
/// > Note: If you want to implement drag and drop for the underlying ``LineEdit``, you can use ``Control/setDragForwarding(dragFunc:canDropFunc:dropFunc:)`` on the node returned by ``getLineEdit()``.
/// 
open class SpinBox: Range {
    override open class var godotClassName: StringName { "SpinBox" }
    
    /* Properties */
    
    /// Changes the alignment of the underlying ``LineEdit``.
    final public var alignment: HorizontalAlignment {
        get {
            return get_horizontal_alignment ()
        }
        
        set {
            set_horizontal_alignment (newValue)
        }
        
    }
    
    /// If `true`, the ``SpinBox`` will be editable. Otherwise, it will be read only.
    final public var editable: Bool {
        get {
            return is_editable ()
        }
        
        set {
            set_editable (newValue)
        }
        
    }
    
    /// Sets the value of the ``Range`` for this ``SpinBox`` when the ``LineEdit`` text is _changed_ instead of _submitted_. See [signal LineEdit.text_changed] and [signal LineEdit.text_submitted].
    final public var updateOnTextChanged: Bool {
        get {
            return get_update_on_text_changed ()
        }
        
        set {
            set_update_on_text_changed (newValue)
        }
        
    }
    
    /// Adds the specified prefix string before the numerical value of the ``SpinBox``.
    final public var prefix: String {
        get {
            return get_prefix ()
        }
        
        set {
            set_prefix (newValue)
        }
        
    }
    
    /// Adds the specified suffix string after the numerical value of the ``SpinBox``.
    final public var suffix: String {
        get {
            return get_suffix ()
        }
        
        set {
            set_suffix (newValue)
        }
        
    }
    
    /// If not `0`, ``Range/value`` will always be rounded to a multiple of ``customArrowStep`` when interacting with the arrow buttons of the ``SpinBox``.
    final public var customArrowStep: Double {
        get {
            return get_custom_arrow_step ()
        }
        
        set {
            set_custom_arrow_step (newValue)
        }
        
    }
    
    /// If `true`, the ``SpinBox`` will select the whole text when the ``LineEdit`` gains focus. Clicking the up and down arrows won't trigger this behavior.
    final public var selectAllOnFocus: Bool {
        get {
            return is_select_all_on_focus ()
        }
        
        set {
            set_select_all_on_focus (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_horizontal_alignment: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_horizontal_alignment")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312603777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_alignment(_ alignment: HorizontalAlignment) {
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_horizontal_alignment, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_horizontal_alignment")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_alignment() -> HorizontalAlignment {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SpinBox.method_get_horizontal_alignment, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static var method_set_suffix: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_suffix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suffix(_ suffix: String) {
        let suffix = GString(suffix)
        withUnsafePointer(to: suffix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_suffix, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_suffix: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_suffix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suffix() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(SpinBox.method_get_suffix, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_prefix: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_prefix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_prefix(_ prefix: String) {
        let prefix = GString(prefix)
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_prefix, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_prefix: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_prefix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_prefix() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(SpinBox.method_get_prefix, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_editable")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editable(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_editable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_custom_arrow_step: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_custom_arrow_step")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_arrow_step(_ arrowStep: Double) {
        withUnsafePointer(to: arrowStep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_custom_arrow_step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_custom_arrow_step: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_custom_arrow_step")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_arrow_step() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SpinBox.method_get_custom_arrow_step, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_editable")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_is_editable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_update_on_text_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_update_on_text_changed")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_on_text_changed(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_update_on_text_changed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_update_on_text_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_update_on_text_changed")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_on_text_changed() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_get_update_on_text_changed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_select_all_on_focus: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_select_all_on_focus")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_select_all_on_focus(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_select_all_on_focus, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_select_all_on_focus: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_select_all_on_focus")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_select_all_on_focus() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_is_select_all_on_focus, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_apply: GDExtensionMethodBindPtr = {
        let methodName = StringName("apply")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Applies the current value of this ``SpinBox``.
    public final func apply() {
        gi.object_method_bind_ptrcall(SpinBox.method_apply, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_line_edit: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_line_edit")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4071694264)!
            }
            
        }
        
    }()
    
    /// Returns the ``LineEdit`` instance from this ``SpinBox``. You can use it to access properties and methods of ``LineEdit``.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getLineEdit() -> LineEdit? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SpinBox.method_get_line_edit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}
