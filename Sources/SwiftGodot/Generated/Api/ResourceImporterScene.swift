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

/// Imports a glTF, FBX, Collada or Blender 3D scene.
/// 
/// See also ``ResourceImporterOBJ``, which is used for OBJ models that can be imported as an independent ``Mesh`` or a scene.
/// 
/// Additional options (such as extracting individual meshes or materials to files) are available in the **Advanced Import Settings** dialog. This dialog can be accessed by double-clicking a 3D scene in the FileSystem dock or by selecting a 3D scene in the FileSystem dock, going to the Import dock and choosing **Advanced**.
/// 
/// > Note: ``ResourceImporterScene`` is _not_ used for ``PackedScene``s, such as `.tscn` and `.scn` files.
/// 
open class ResourceImporterScene: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterScene" }
}

