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

/// Mesh with a single Point primitive.
/// 
/// The PointMesh is made from a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with Particle systems, but can be used as a cheap way to render constant size billboarded sprites (for example in a point cloud).
/// 
/// PointMeshes, must be used with a material that has a point size. Point size can be accessed in a shader with `POINT_SIZE`, or in a ``BaseMaterial3D`` by setting ``BaseMaterial3D/usePointSize`` and the variable ``BaseMaterial3D/pointSize``.
/// 
/// When using PointMeshes, properties that normally alter vertices will be ignored, including billboard mode, grow, and cull face.
/// 
open class PointMesh: PrimitiveMesh {
    override open class var godotClassName: StringName { "PointMesh" }
}
