@_implementationOnly import GDExtension

public protocol ExtensionInterface {

    func variantShouldDeinit(content: UnsafeRawPointer) -> Bool

    func objectShouldDeinit(handle: UnsafeRawPointer) -> Bool

    func objectInited(object: Wrapped)

    func objectDeinited(object: Wrapped)

    func getLibrary() -> UnsafeMutableRawPointer

    func getProcAddr() -> OpaquePointer

}

class LibGodotExtensionInterface: ExtensionInterface {

    /// If your application is crashing due to the Variant leak fixes, please
    /// enable this flag, and provide me with a test case, so I can find that
    /// pesky scenario.
    public let experimentalDisableVariantUnref = false

    private let library: GDExtensionClassLibraryPtr
    private let getProcAddrFun: GDExtensionInterfaceGetProcAddress

    public init(library: GDExtensionClassLibraryPtr, getProcAddrFun: GDExtensionInterfaceGetProcAddress) {
        self.library = library
        self.getProcAddrFun = getProcAddrFun
    }

    public func variantShouldDeinit(content: UnsafeRawPointer) -> Bool {
        return !experimentalDisableVariantUnref
    }

    public func objectShouldDeinit(handle: UnsafeRawPointer) -> Bool {
        return true
    }

    public func objectInited(object: Wrapped) {}

    public func objectDeinited(object: Wrapped) {}

    public func getLibrary() -> UnsafeMutableRawPointer {
        return UnsafeMutableRawPointer(mutating: library)
    }

    public func getProcAddr() -> OpaquePointer {
        return unsafeBitCast(getProcAddrFun, to: OpaquePointer.self)
    }

}
