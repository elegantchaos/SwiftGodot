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

/// A directory for the resource filesystem.
/// 
/// A more generalized, low-level variation of the directory concept.
open class EditorFileSystemDirectory: Object {
    override open class var godotClassName: StringName { "EditorFileSystemDirectory" }
    /* Methods */
    fileprivate static var method_get_subdir_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_subdir_count")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of subdirectories in this directory.
    public final func getSubdirCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_subdir_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_subdir: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_subdir")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2330964164)!
            }
            
        }
        
    }()
    
    /// Returns the subdirectory at index `idx`.
    public final func getSubdir(idx: Int32) -> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_subdir, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_file_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_count")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of files in this directory.
    public final func getFileCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_file: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the file at index `idx`.
    public final func getFile(idx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_file_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_path")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the path to the file at index `idx`.
    public final func getFilePath(idx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_file_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_type")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the resource type of the file at index `idx`. This returns a string such as `"Resource"` or `"GDScript"`, _not_ a file extension such as `".gd"`.
    public final func getFileType(idx: Int32) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_file_script_class_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_script_class_name")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.
    public final func getFileScriptClassName(idx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_script_class_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_file_script_class_extends: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_script_class_extends")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the base class of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.
    public final func getFileScriptClassExtends(idx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_script_class_extends, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_file_import_is_valid: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_import_is_valid")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file at index `idx` imported properly.
    public final func getFileImportIsValid(idx: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_file_import_is_valid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_name")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the name of this directory.
    public final func getName() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_path")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the path to this directory.
    public final func getPath() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_parent: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_parent")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 842323275)!
            }
            
        }
        
    }()
    
    /// Returns the parent directory for this directory or `null` if called on a directory at `res://` or `user://`.
    public final func getParent() -> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_get_parent, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_find_file_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("find_file_index")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the index of the file with name `name` or `-1` if not found.
    public final func findFileIndex(name: String) -> Int32 {
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_find_file_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_find_dir_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("find_dir_index")
        return withUnsafePointer(to: &EditorFileSystemDirectory.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the index of the directory with name `name` or `-1` if not found.
    public final func findDirIndex(name: String) -> Int32 {
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystemDirectory.method_find_dir_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

