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

/// A horizontal menu bar that creates a ``MenuButton`` for each ``PopupMenu`` child.
/// 
/// A horizontal menu bar that creates a ``MenuButton`` for each ``PopupMenu`` child. New items are created by adding ``PopupMenu``s to this node.
open class MenuBar: Control {
    override open class var godotClassName: StringName { "MenuBar" }
    
    /* Properties */
    
    /// Flat ``MenuBar`` don't display item decoration.
    final public var flat: Bool {
        get {
            return is_flat ()
        }
        
        set {
            set_flat (newValue)
        }
        
    }
    
    /// Position in the global menu to insert first ``MenuBar`` item at.
    final public var startIndex: Int32 {
        get {
            return get_start_index ()
        }
        
        set {
            set_start_index (newValue)
        }
        
    }
    
    /// If `true`, when the cursor hovers above menu item, it will close the current ``PopupMenu`` and open the other one.
    final public var switchOnHover: Bool {
        get {
            return is_switch_on_hover ()
        }
        
        set {
            set_switch_on_hover (newValue)
        }
        
    }
    
    /// If `true`, ``MenuBar`` will use system global menu when supported.
    final public var preferGlobalMenu: Bool {
        get {
            return is_prefer_global_menu ()
        }
        
        set {
            set_prefer_global_menu (newValue)
        }
        
    }
    
    /// Base text writing direction.
    final public var textDirection: Control.TextDirection {
        get {
            return get_text_direction ()
        }
        
        set {
            set_text_direction (newValue)
        }
        
    }
    
    /// Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
    final public var language: String {
        get {
            return get_language ()
        }
        
        set {
            set_language (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_switch_on_hover: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_switch_on_hover")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_switch_on_hover(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_switch_on_hover, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_switch_on_hover: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_switch_on_hover")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_switch_on_hover() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MenuBar.method_is_switch_on_hover, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_disable_shortcuts: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_disable_shortcuts")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, shortcuts are disabled and cannot be used to trigger the button.
    public final func setDisableShortcuts(disabled: Bool) {
        withUnsafePointer(to: disabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_disable_shortcuts, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_prefer_global_menu: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_prefer_global_menu")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_prefer_global_menu(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_prefer_global_menu, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_prefer_global_menu: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_prefer_global_menu")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_prefer_global_menu() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MenuBar.method_is_prefer_global_menu, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_native_menu: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_native_menu")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if system global menu is supported and used by this ``MenuBar``.
    public final func isNativeMenu() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MenuBar.method_is_native_menu, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_menu_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_menu_count")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of menu items.
    public final func getMenuCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MenuBar.method_get_menu_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_text_direction: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_text_direction")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 119160795)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_direction(_ direction: Control.TextDirection) {
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_text_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_text_direction: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_text_direction")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797257663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> Control.TextDirection {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MenuBar.method_get_text_direction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static var method_set_language: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_language")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_language(_ language: String) {
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_language, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_language: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_language")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(MenuBar.method_get_language, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_flat: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flat")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flat(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_flat, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_flat: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_flat")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flat() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MenuBar.method_is_flat, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_start_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_start_index")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_start_index(_ enabled: Int32) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_set_start_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_start_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_start_index")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_start_index() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MenuBar.method_get_start_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_menu_title: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_menu_title")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets menu item title.
    public final func setMenuTitle(menu: Int32, title: String) {
        withUnsafePointer(to: menu) { pArg0 in
            let title = GString(title)
            withUnsafePointer(to: title.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MenuBar.method_set_menu_title, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_menu_title: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_menu_title")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns menu item title.
    public final func getMenuTitle(menu: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_get_menu_title, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_set_menu_tooltip: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_menu_tooltip")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets menu item tooltip.
    public final func setMenuTooltip(menu: Int32, tooltip: String) {
        withUnsafePointer(to: menu) { pArg0 in
            let tooltip = GString(tooltip)
            withUnsafePointer(to: tooltip.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MenuBar.method_set_menu_tooltip, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_menu_tooltip: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_menu_tooltip")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns menu item tooltip.
    public final func getMenuTooltip(menu: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_get_menu_tooltip, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_set_menu_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_menu_disabled")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, menu item is disabled.
    public final func setMenuDisabled(menu: Int32, disabled: Bool) {
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: disabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MenuBar.method_set_menu_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_menu_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_menu_disabled")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if menu item is disabled.
    public final func isMenuDisabled(menu: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_is_menu_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_menu_hidden: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_menu_hidden")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, menu item is hidden.
    public final func setMenuHidden(menu: Int32, hidden: Bool) {
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: hidden) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MenuBar.method_set_menu_hidden, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_menu_hidden: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_menu_hidden")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if menu item is hidden.
    public final func isMenuHidden(menu: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_is_menu_hidden, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_menu_popup: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_menu_popup")
        return withUnsafePointer(to: &MenuBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2100501353)!
            }
            
        }
        
    }()
    
    /// Returns ``PopupMenu`` associated with menu item.
    public final func getMenuPopup(menu: Int32) -> PopupMenu? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: menu) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuBar.method_get_menu_popup, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

