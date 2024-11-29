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

/// Abstract base class for noise generators.
/// 
/// This class defines the interface for noise generation libraries to inherit from.
/// 
/// A default ``getSeamlessImage(width:height:invert:in3dSpace:skirt:normalize:)`` implementation is provided for libraries that do not provide seamless noise. This function requests a larger image from the ``getImage(width:height:invert:in3dSpace:normalize:)`` method, reverses the quadrants of the image, then uses the strips of extra width to blend over the seams.
/// 
/// Inheriting noise classes can optionally override this function to provide a more optimal algorithm.
/// 
open class Noise: Resource {
    override open class var godotClassName: StringName { "Noise" }
    /* Methods */
    fileprivate static var method_get_noise_1d: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise_1d")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3919130443)!
            }
            
        }
        
    }()
    
    /// Returns the 1D noise value at the given (x) coordinate.
    public final func getNoise1d(x: Double) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Noise.method_get_noise_1d, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_noise_2d: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise_2d")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2753205203)!
            }
            
        }
        
    }()
    
    /// Returns the 2D noise value at the given position.
    public final func getNoise2d(x: Double, y: Double) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Noise.method_get_noise_2d, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_noise_2dv: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise_2dv")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2276447920)!
            }
            
        }
        
    }()
    
    /// Returns the 2D noise value at the given position.
    public final func getNoise2dv(v: Vector2) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: v) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Noise.method_get_noise_2dv, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_noise_3d: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise_3d")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 973811851)!
            }
            
        }
        
    }()
    
    /// Returns the 3D noise value at the given position.
    public final func getNoise3d(x: Double, y: Double, z: Double) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: z) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Noise.method_get_noise_3d, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_noise_3dv: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_noise_3dv")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1109078154)!
            }
            
        }
        
    }()
    
    /// Returns the 3D noise value at the given position.
    public final func getNoise3dv(v: Vector3) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: v) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Noise.method_get_noise_3dv, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_image: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_image")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3180683109)!
            }
            
        }
        
    }()
    
    /// Returns an ``Image`` containing 2D noise values.
    /// 
    /// > Note: With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.
    /// 
    public final func getImage(width: Int32, height: Int32, invert: Bool = false, in3dSpace: Bool = false, normalize: Bool = true) -> Image? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: invert) { pArg2 in
                    withUnsafePointer(to: in3dSpace) { pArg3 in
                        withUnsafePointer(to: normalize) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Noise.method_get_image, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_seamless_image: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_seamless_image")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2770743602)!
            }
            
        }
        
    }()
    
    /// Returns an ``Image`` containing seamless 2D noise values.
    /// 
    /// > Note: With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.
    /// 
    public final func getSeamlessImage(width: Int32, height: Int32, invert: Bool = false, in3dSpace: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> Image? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: invert) { pArg2 in
                    withUnsafePointer(to: in3dSpace) { pArg3 in
                        withUnsafePointer(to: skirt) { pArg4 in
                            withUnsafePointer(to: normalize) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(Noise.method_get_seamless_image, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_image_3d: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_image_3d")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3977814329)!
            }
            
        }
        
    }()
    
    /// Returns an ``GArray`` of ``Image``s containing 3D noise values for use with ``ImageTexture3D/create(format:width:height:depth:useMipmaps:data:)``.
    /// 
    /// > Note: With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.
    /// 
    public final func getImage3d(width: Int32, height: Int32, depth: Int32, invert: Bool = false, normalize: Bool = true) -> ObjectCollection<Image> {
        var _result: Int64 = 0
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: depth) { pArg2 in
                    withUnsafePointer(to: invert) { pArg3 in
                        withUnsafePointer(to: normalize) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Noise.method_get_image_3d, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return ObjectCollection<Image>(content: _result)
    }
    
    fileprivate static var method_get_seamless_image_3d: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_seamless_image_3d")
        return withUnsafePointer(to: &Noise.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 451006340)!
            }
            
        }
        
    }()
    
    /// Returns an ``GArray`` of ``Image``s containing seamless 3D noise values for use with ``ImageTexture3D/create(format:width:height:depth:useMipmaps:data:)``.
    /// 
    /// > Note: With `normalize` set to `false`, the default implementation expects the noise generator to return values in the range `-1.0` to `1.0`.
    /// 
    public final func getSeamlessImage3d(width: Int32, height: Int32, depth: Int32, invert: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> ObjectCollection<Image> {
        var _result: Int64 = 0
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: depth) { pArg2 in
                    withUnsafePointer(to: invert) { pArg3 in
                        withUnsafePointer(to: skirt) { pArg4 in
                            withUnsafePointer(to: normalize) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(Noise.method_get_seamless_image_3d, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return ObjectCollection<Image>(content: _result)
    }
    
}

