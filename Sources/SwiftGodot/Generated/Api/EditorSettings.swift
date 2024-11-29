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

/// Object that holds the project-independent editor settings.
/// 
/// Object that holds the project-independent editor settings. These settings are generally visible in the **Editor > Editor Settings** menu.
/// 
/// Property names use slash delimiters to distinguish sections. Setting values can be of any ``Variant`` type. It's recommended to use `snake_case` for editor settings to be consistent with the Godot editor itself.
/// 
/// Accessing the settings can be done using the following methods, such as:
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getEditorSettings()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``settingsChanged``
open class EditorSettings: Resource {
    override open class var godotClassName: StringName { "EditorSettings" }
    /* Constants */
    /// Emitted after any editor setting has changed. It's used by various editor plugins to update their visuals on theme changes or logic on configuration changes.
    public static let notificationEditorSettingsChanged = 10000
    /* Methods */
    fileprivate static var method_has_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_setting")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the setting specified by `name` exists, `false` otherwise.
    public final func hasSetting(name: String) -> Bool {
        var _result: Bool = false
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_has_setting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_setting")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Sets the `value` of the setting specified by `name`. This is equivalent to using ``Object/set(property:value:)`` on the EditorSettings instance.
    public final func setSetting(name: String, value: Variant?) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorSettings.method_set_setting, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_setting: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_setting")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1868160156)!
            }
            
        }
        
    }()
    
    /// Returns the value of the setting specified by `name`. This is equivalent to using ``Object/get(property:)`` on the EditorSettings instance.
    public final func getSetting(name: String) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_get_setting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static var method_erase: GDExtensionMethodBindPtr = {
        let methodName = StringName("erase")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Erases the setting whose name is specified by `property`.
    public final func erase(property: String) {
        let property = GString(property)
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_erase, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_initial_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_initial_value")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1529169264)!
            }
            
        }
        
    }()
    
    /// Sets the initial value of the setting specified by `name` to `value`. This is used to provide a value for the Revert button in the Editor Settings. If `updateCurrent` is true, the current value of the setting will be set to `value` as well.
    public final func setInitialValue(name: StringName, value: Variant?, updateCurrent: Bool) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: updateCurrent) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorSettings.method_set_initial_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_property_info: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_property_info")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    /// Adds a custom property info to a property. The dictionary must contain:
    /// 
    /// - `name`: ``String`` (the name of the property)
    /// 
    /// - `type`: integer (see ``Variant.GType``)
    /// 
    /// - optionally `hint`: integer (see ``PropertyHint``) and `hint_string`: ``String``
    /// 
    /// **Example:**
    /// 
    public final func addPropertyInfo(_ info: GDictionary) {
        withUnsafePointer(to: info.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_add_property_info, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_project_metadata: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_project_metadata")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2504492430)!
            }
            
        }
        
    }()
    
    /// Sets project-specific metadata with the `section`, `key` and `data` specified. This metadata is stored outside the project folder and therefore won't be checked into version control. See also ``getProjectMetadata(section:key:`default`:)``.
    public final func setProjectMetadata(section: String, key: String, data: Variant?) {
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorSettings.method_set_project_metadata, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_project_metadata: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_project_metadata")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 89809366)!
            }
            
        }
        
    }()
    
    /// Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also ``setProjectMetadata(section:key:data:)``.
    public final func getProjectMetadata(section: String, key: String, `default`: Variant?) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: `default`.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorSettings.method_get_project_metadata, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static var method_set_favorites: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_favorites")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    /// Sets the list of favorite files and directories for this project.
    public final func setFavorites(dirs: PackedStringArray) {
        withUnsafePointer(to: dirs.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_set_favorites, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_favorites: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_favorites")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of favorite files and directories for this project.
    public final func getFavorites() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorSettings.method_get_favorites, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_recent_dirs: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_recent_dirs")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    /// Sets the list of recently visited folders in the file dialog for this project.
    public final func setRecentDirs(_ dirs: PackedStringArray) {
        withUnsafePointer(to: dirs.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_set_recent_dirs, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_recent_dirs: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_recent_dirs")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of recently visited folders in the file dialog for this project.
    public final func getRecentDirs() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorSettings.method_get_recent_dirs, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_builtin_action_override: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_builtin_action_override")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1209351045)!
            }
            
        }
        
    }()
    
    /// Overrides the built-in editor action `name` with the input actions defined in `actionsList`.
    public final func setBuiltinActionOverride(name: String, actionsList: ObjectCollection<InputEvent>) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: actionsList.array.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorSettings.method_set_builtin_action_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_check_changed_settings_in_group: GDExtensionMethodBindPtr = {
        let methodName = StringName("check_changed_settings_in_group")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Checks if any settings with the prefix `settingPrefix` exist in the set of changed settings. See also ``getChangedSettings()``.
    public final func checkChangedSettingsInGroup(settingPrefix: String) -> Bool {
        var _result: Bool = false
        let settingPrefix = GString(settingPrefix)
        withUnsafePointer(to: settingPrefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_check_changed_settings_in_group, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_changed_settings: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_changed_settings")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Gets an array of the settings which have been changed since the last save. Note that internally `changed_settings` is cleared after a successful save, so generally the most appropriate place to use this method is when processing ``notificationEditorSettingsChanged``.
    public final func getChangedSettings() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorSettings.method_get_changed_settings, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_mark_setting_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName("mark_setting_changed")
        return withUnsafePointer(to: &EditorSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Marks the passed editor setting as being changed, see ``getChangedSettings()``. Only settings which exist (see ``hasSetting(name:)``) will be accepted.
    public final func markSettingChanged(setting: String) {
        let setting = GString(setting)
        withUnsafePointer(to: setting.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSettings.method_mark_setting_changed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted after any editor setting has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.settingsChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var settingsChanged: SimpleSignal { SimpleSignal (target: self, signalName: "settings_changed") }
    
}
