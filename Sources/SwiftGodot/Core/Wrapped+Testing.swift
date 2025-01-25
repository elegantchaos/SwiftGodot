public extension Wrapped {
    struct Testing {
        /// Public API for tracking live objects
        public struct LiveObjects {
            /// All framework objects
            public static var framework: [Wrapped] { Array(liveFrameworkObjects.values) }

            /// All user-defined objects
            public static var subtyped: [Wrapped] { Array(liveSubtypedObjects.values) }

            /// All objects
            public static var all: [Wrapped] { framework + subtyped }

            /// Reset all existing tracked objects
            public static func reset() {
                liveFrameworkObjects.removeAll()
                liveSubtypedObjects.removeAll()
            }
        }
        
        /// Public API for monitoring class names.
        public struct ClassNames {
            public typealias DuplicateNameCallback = (StringName, Wrapped.Type) -> Void
            /// Set a callback to be called when a duplicate class name is detected.
            public static func setDuplicateNameCallback(_ callback: @escaping DuplicateNameCallback) -> DuplicateNameCallback {
                let old = duplicateClassNameDetected
                duplicateClassNameDetected = callback
                return old
            }
        }
    }
}

/// Currently contains all instantiated objects, but might want to separate those
/// (or find a way of easily telling appart) framework objects from user subtypes
internal var liveFrameworkObjects: [UnsafeRawPointer: Wrapped] = [:]
internal var liveSubtypedObjects: [UnsafeRawPointer: Wrapped] = [:]

/// Callback to be called when a duplicate class name is detected.
internal var duplicateClassNameDetected: Wrapped.Testing.ClassNames.DuplicateNameCallback = { name, type in
    preconditionFailure(
        """
        Godot already has a class named \(name), so I cannot register \(type) using that name. This is a fatal error because the only way I can tell whether Godot is handing me a pointer to a class I'm responsible for is by checking the class name.
        """
    )
}
