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

/// Base class for XR interface extensions (plugins).
/// 
/// External XR interface plugins should inherit from this class.
open class XRInterfaceExtension: XRInterface {
    override open class var godotClassName: StringName { "XRInterfaceExtension" }
    /* Methods */
    /// Returns the name of this interface.
    @_documentation(visibility: public)
    open func _getName() -> StringName {
        return StringName ()
    }
    
    /// Returns the capabilities of this interface.
    @_documentation(visibility: public)
    open func _getCapabilities() -> UInt32 {
        return 0
    }
    
    /// Returns `true` if this interface has been initialized.
    @_documentation(visibility: public)
    open func _isInitialized() -> Bool {
        return false
    }
    
    /// Initializes the interface, returns `true` on success.
    @_documentation(visibility: public)
    open func _initialize() -> Bool {
        return false
    }
    
    /// Uninitialize the interface.
    @_documentation(visibility: public)
    open func _uninitialize() {
    }
    
    /// Returns a ``GDictionary`` with system information related to this interface.
    @_documentation(visibility: public)
    open func _getSystemInfo() -> GDictionary {
        return GDictionary ()
    }
    
    /// Returns `true` if this interface supports this play area mode.
    @_documentation(visibility: public)
    open func _supportsPlayAreaMode(_ mode: XRInterface.PlayAreaMode) -> Bool {
        return false
    }
    
    /// Returns the play area mode that sets up our play area.
    @_documentation(visibility: public)
    open func _getPlayAreaMode() -> XRInterface.PlayAreaMode {
        return XRInterface.PlayAreaMode(rawValue: 0)!
    }
    
    /// Set the play area mode for this interface.
    @_documentation(visibility: public)
    open func _setPlayAreaMode(_ mode: XRInterface.PlayAreaMode) -> Bool {
        return false
    }
    
    /// Returns a ``PackedVector3Array`` that represents the play areas boundaries (if applicable).
    @_documentation(visibility: public)
    open func _getPlayArea() -> PackedVector3Array {
        return PackedVector3Array ()
    }
    
    /// Returns the size of our render target for this interface, this overrides the size of the ``Viewport`` marked as the xr viewport.
    @_documentation(visibility: public)
    open func _getRenderTargetSize() -> Vector2 {
        return Vector2 ()
    }
    
    /// Returns the number of views this interface requires, 1 for mono, 2 for stereoscopic.
    @_documentation(visibility: public)
    open func _getViewCount() -> UInt32 {
        return 0
    }
    
    /// Returns the ``Transform3D`` that positions the ``XRCamera3D`` in the world.
    @_documentation(visibility: public)
    open func _getCameraTransform() -> Transform3D {
        return Transform3D ()
    }
    
    /// Returns a ``Transform3D`` for a given view.
    @_documentation(visibility: public)
    open func _getTransformForView(_ view: UInt32, camTransform: Transform3D) -> Transform3D {
        return Transform3D ()
    }
    
    /// Returns the projection matrix for the given view as a ``PackedFloat64Array``.
    @_documentation(visibility: public)
    open func _getProjectionForView(_ view: UInt32, aspect: Double, zNear: Double, zFar: Double) -> PackedFloat64Array {
        return PackedFloat64Array ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _getVrsTexture() -> RID {
        return RID ()
    }
    
    /// Called if this ``XRInterfaceExtension`` is active before our physics and game process is called. Most XR interfaces will update its ``XRPositionalTracker``s at this point in time.
    @_documentation(visibility: public)
    open func _process() {
    }
    
    /// Called if this ``XRInterfaceExtension`` is active before rendering starts. Most XR interfaces will sync tracking at this point in time.
    @_documentation(visibility: public)
    open func _preRender() {
    }
    
    /// Called if this is our primary ``XRInterfaceExtension`` before we start processing a ``Viewport`` for every active XR ``Viewport``, returns `true` if that viewport should be rendered. An XR interface may return `false` if the user has taken off their headset and we can pause rendering.
    @_documentation(visibility: public)
    open func _preDrawViewport(renderTarget: RID) -> Bool {
        return false
    }
    
    /// Called after the XR ``Viewport`` draw logic has completed.
    @_documentation(visibility: public)
    open func _postDrawViewport(renderTarget: RID, screenRect: Rect2) {
    }
    
    /// Called if interface is active and queues have been submitted.
    @_documentation(visibility: public)
    open func _endFrame() {
    }
    
    /// Returns a ``PackedStringArray`` with tracker names configured by this interface. Note that user configuration can override this list.
    @_documentation(visibility: public)
    open func _getSuggestedTrackerNames() -> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Returns a ``PackedStringArray`` with pose names configured by this interface. Note that user configuration can override this list.
    @_documentation(visibility: public)
    open func _getSuggestedPoseNames(trackerName: StringName) -> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Returns a ``XRInterface.TrackingStatus`` specifying the current status of our tracking.
    @_documentation(visibility: public)
    open func _getTrackingStatus() -> XRInterface.TrackingStatus {
        return XRInterface.TrackingStatus(rawValue: 0)!
    }
    
    /// Triggers a haptic pulse to be emitted on the specified tracker.
    @_documentation(visibility: public)
    open func _triggerHapticPulse(actionName: String, trackerName: StringName, frequency: Double, amplitude: Double, durationSec: Double, delaySec: Double) {
    }
    
    /// Return `true` if anchor detection is enabled for this interface.
    @_documentation(visibility: public)
    open func _getAnchorDetectionIsEnabled() -> Bool {
        return false
    }
    
    /// Enables anchor detection on this interface if supported.
    @_documentation(visibility: public)
    open func _setAnchorDetectionIsEnabled(_ enabled: Bool) {
    }
    
    /// Returns the camera feed ID for the ``CameraFeed`` registered with the ``CameraServer`` that should be presented as the background on an AR capable device (if applicable).
    @_documentation(visibility: public)
    open func _getCameraFeedId() -> Int32 {
        return 0
    }
    
    /// Return color texture into which to render (if applicable).
    @_documentation(visibility: public)
    open func _getColorTexture() -> RID {
        return RID ()
    }
    
    /// Return depth texture into which to render (if applicable).
    @_documentation(visibility: public)
    open func _getDepthTexture() -> RID {
        return RID ()
    }
    
    /// Return velocity texture into which to render (if applicable).
    @_documentation(visibility: public)
    open func _getVelocityTexture() -> RID {
        return RID ()
    }
    
    fileprivate static var method_get_color_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_color_texture")
        return withUnsafePointer(to: &XRInterfaceExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    public final func getColorTexture() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(XRInterfaceExtension.method_get_color_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_depth_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth_texture")
        return withUnsafePointer(to: &XRInterfaceExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    public final func getDepthTexture() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(XRInterfaceExtension.method_get_depth_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_velocity_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_velocity_texture")
        return withUnsafePointer(to: &XRInterfaceExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVelocityTexture() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(XRInterfaceExtension.method_get_velocity_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_add_blit: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_blit")
        return withUnsafePointer(to: &XRInterfaceExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 258596971)!
            }
            
        }
        
    }()
    
    /// Blits our render results to screen optionally applying lens distortion. This can only be called while processing `_commit_views`.
    public final func addBlit(renderTarget: RID, srcRect: Rect2, dstRect: Rect2i, useLayer: Bool, layer: UInt32, applyLensDistortion: Bool, eyeCenter: Vector2, k1: Double, k2: Double, upscale: Double, aspectRatio: Double) {
        withUnsafePointer(to: renderTarget.content) { pArg0 in
            withUnsafePointer(to: srcRect) { pArg1 in
                withUnsafePointer(to: dstRect) { pArg2 in
                    withUnsafePointer(to: useLayer) { pArg3 in
                        withUnsafePointer(to: layer) { pArg4 in
                            withUnsafePointer(to: applyLensDistortion) { pArg5 in
                                withUnsafePointer(to: eyeCenter) { pArg6 in
                                    withUnsafePointer(to: k1) { pArg7 in
                                        withUnsafePointer(to: k2) { pArg8 in
                                            withUnsafePointer(to: upscale) { pArg9 in
                                                withUnsafePointer(to: aspectRatio) { pArg10 in
                                                    withUnsafePointer(to: UnsafeRawPointersN11(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10)) { pArgs in
                                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 11) { pArgs in
                                                            gi.object_method_bind_ptrcall(XRInterfaceExtension.method_add_blit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_render_target_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_render_target_texture")
        return withUnsafePointer(to: &XRInterfaceExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 41030802)!
            }
            
        }
        
    }()
    
    /// Returns a valid ``RID`` for a texture to which we should render the current frame if supported by the interface.
    public final func getRenderTargetTexture(renderTarget: RID) -> RID {
        let _result: RID = RID ()
        withUnsafePointer(to: renderTarget.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRInterfaceExtension.method_get_render_target_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_end_frame":
                return _XRInterfaceExtension_proxy_end_frame
            case "_get_anchor_detection_is_enabled":
                return _XRInterfaceExtension_proxy_get_anchor_detection_is_enabled
            case "_get_camera_feed_id":
                return _XRInterfaceExtension_proxy_get_camera_feed_id
            case "_get_camera_transform":
                return _XRInterfaceExtension_proxy_get_camera_transform
            case "_get_capabilities":
                return _XRInterfaceExtension_proxy_get_capabilities
            case "_get_color_texture":
                return _XRInterfaceExtension_proxy_get_color_texture
            case "_get_depth_texture":
                return _XRInterfaceExtension_proxy_get_depth_texture
            case "_get_name":
                return _XRInterfaceExtension_proxy_get_name
            case "_get_play_area":
                return _XRInterfaceExtension_proxy_get_play_area
            case "_get_play_area_mode":
                return _XRInterfaceExtension_proxy_get_play_area_mode
            case "_get_projection_for_view":
                return _XRInterfaceExtension_proxy_get_projection_for_view
            case "_get_render_target_size":
                return _XRInterfaceExtension_proxy_get_render_target_size
            case "_get_suggested_pose_names":
                return _XRInterfaceExtension_proxy_get_suggested_pose_names
            case "_get_suggested_tracker_names":
                return _XRInterfaceExtension_proxy_get_suggested_tracker_names
            case "_get_system_info":
                return _XRInterfaceExtension_proxy_get_system_info
            case "_get_tracking_status":
                return _XRInterfaceExtension_proxy_get_tracking_status
            case "_get_transform_for_view":
                return _XRInterfaceExtension_proxy_get_transform_for_view
            case "_get_velocity_texture":
                return _XRInterfaceExtension_proxy_get_velocity_texture
            case "_get_view_count":
                return _XRInterfaceExtension_proxy_get_view_count
            case "_get_vrs_texture":
                return _XRInterfaceExtension_proxy_get_vrs_texture
            case "_initialize":
                return _XRInterfaceExtension_proxy_initialize
            case "_is_initialized":
                return _XRInterfaceExtension_proxy_is_initialized
            case "_post_draw_viewport":
                return _XRInterfaceExtension_proxy_post_draw_viewport
            case "_pre_draw_viewport":
                return _XRInterfaceExtension_proxy_pre_draw_viewport
            case "_pre_render":
                return _XRInterfaceExtension_proxy_pre_render
            case "_process":
                return _XRInterfaceExtension_proxy_process
            case "_set_anchor_detection_is_enabled":
                return _XRInterfaceExtension_proxy_set_anchor_detection_is_enabled
            case "_set_play_area_mode":
                return _XRInterfaceExtension_proxy_set_play_area_mode
            case "_supports_play_area_mode":
                return _XRInterfaceExtension_proxy_supports_play_area_mode
            case "_trigger_haptic_pulse":
                return _XRInterfaceExtension_proxy_trigger_haptic_pulse
            case "_uninitialize":
                return _XRInterfaceExtension_proxy_uninitialize
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _XRInterfaceExtension_proxy_end_frame (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._endFrame ()
}

func _XRInterfaceExtension_proxy_get_anchor_detection_is_enabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAnchorDetectionIsEnabled ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_get_camera_feed_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCameraFeedId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _XRInterfaceExtension_proxy_get_camera_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCameraTransform ()
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _XRInterfaceExtension_proxy_get_capabilities (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCapabilities ()
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _XRInterfaceExtension_proxy_get_color_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getColorTexture ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _XRInterfaceExtension_proxy_get_depth_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getDepthTexture ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _XRInterfaceExtension_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getName ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _XRInterfaceExtension_proxy_get_play_area (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPlayArea ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedVector3Array
    ret.content = PackedVector3Array.zero
}

func _XRInterfaceExtension_proxy_get_play_area_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPlayAreaMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _XRInterfaceExtension_proxy_get_projection_for_view (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getProjectionForView (args [0]!.assumingMemoryBound (to: UInt32.self).pointee, aspect: args [1]!.assumingMemoryBound (to: Double.self).pointee, zNear: args [2]!.assumingMemoryBound (to: Double.self).pointee, zFar: args [3]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedFloat64Array
    ret.content = PackedFloat64Array.zero
}

func _XRInterfaceExtension_proxy_get_render_target_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getRenderTargetSize ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _XRInterfaceExtension_proxy_get_suggested_pose_names (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getSuggestedPoseNames (trackerName: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _XRInterfaceExtension_proxy_get_suggested_tracker_names (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getSuggestedTrackerNames ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _XRInterfaceExtension_proxy_get_system_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getSystemInfo ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = GDictionary.zero
}

func _XRInterfaceExtension_proxy_get_tracking_status (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTrackingStatus ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _XRInterfaceExtension_proxy_get_transform_for_view (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getTransformForView (args [0]!.assumingMemoryBound (to: UInt32.self).pointee, camTransform: args [1]!.assumingMemoryBound (to: Transform3D.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _XRInterfaceExtension_proxy_get_velocity_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getVelocityTexture ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _XRInterfaceExtension_proxy_get_view_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getViewCount ()
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _XRInterfaceExtension_proxy_get_vrs_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getVrsTexture ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _XRInterfaceExtension_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._initialize ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_is_initialized (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isInitialized ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_post_draw_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._postDrawViewport (renderTarget: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), screenRect: args [1]!.assumingMemoryBound (to: Rect2.self).pointee)
}

func _XRInterfaceExtension_proxy_pre_draw_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._preDrawViewport (renderTarget: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_pre_render (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._preRender ()
}

func _XRInterfaceExtension_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._process ()
}

func _XRInterfaceExtension_proxy_set_anchor_detection_is_enabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setAnchorDetectionIsEnabled (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _XRInterfaceExtension_proxy_set_play_area_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._setPlayAreaMode (args [0]!.assumingMemoryBound (to: XRInterface.PlayAreaMode.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_supports_play_area_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._supportsPlayAreaMode (args [0]!.assumingMemoryBound (to: XRInterface.PlayAreaMode.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _XRInterfaceExtension_proxy_trigger_haptic_pulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._triggerHapticPulse (actionName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", trackerName: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), frequency: args [2]!.assumingMemoryBound (to: Double.self).pointee, amplitude: args [3]!.assumingMemoryBound (to: Double.self).pointee, durationSec: args [4]!.assumingMemoryBound (to: Double.self).pointee, delaySec: args [5]!.assumingMemoryBound (to: Double.self).pointee)
}

func _XRInterfaceExtension_proxy_uninitialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<XRInterfaceExtension>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._uninitialize ()
}

