// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 16/10/24.
//  All code (c) 2024 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation
import PackagePlugin

/// Generates/updates `.gdextension` files for library targets.
@main struct UpdateExtensionPlugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        // Extract the target arguments (if there are none, we assume all).
        var argExtractor = ArgumentExtractor(arguments)
        let targetNames = argExtractor.extractOption(named: "target")
        let targets =
            targetNames.isEmpty
            ? context.package.targets
            : try context.package.targets(named: targetNames)

        // Iterate over the targets we've been asked to format.
        for target in targets {
            guard let target = target as? SwiftSourceModuleTarget, target.kind == .generic else {
                Diagnostics.remark("Skipping \(target.name).")
                continue
            }

            let name = target.moduleName

            // read existing settings or make stubs
            let url = context.package.directoryURL.appending(path: "\(name).gdextension")
            let settings: GodotConfigFile
            do {
                settings = try await GodotConfigFile(url)
            } catch {
                settings = GodotConfigFile()
                settings.set("compatibility_minimum", 4.2, section: "configuration")
                settings.set("entry_symbol", "swift_entry_point", section: "configuration")
            }

            // build the target
            print("Building \(name).")

            let result = try packageManager.build(
                .target(name),
                parameters: .init(configuration: .debug, logging: .concise, echoLogs: false)
            )

            dump(target)

            // extract the artifacts if the build succeeded
            if result.succeeded {
                for artifact in result.builtArtifacts.filter({ $0.kind != .executable }) {
                    settings.set("macos.debug", artifact.url.path, section: "libraries")
                    settings.set("macos.release", artifact.url.path.replacing("debug", with: "release"), section: "libraries")

                    // TODO: add support for other platforms
                    let libGodotPath = artifact.url.path.replacing(name, with: "SwiftGodot")

                    settings.set("macos.debug", [libGodotPath: ""], section: "dependencies")
                    settings.set("macos.release", [libGodotPath.replacing("debug", with: "release"): ""], section: "dependencies")

                    // TODO: add correct dependencies for other platforms
                    print("Updated paths for \(artifact.url.path).")

                }
            } else {
                Diagnostics.warning("Couldn't build \(name).")
            }

            try await settings.write(to: url)
        }

    }

    func dump(_ target: SwiftSourceModuleTarget) {
        for lib in target.linkedLibraries {
            print(lib)
        }

        for f in target.linkedFrameworks {
            print(f)
        }

        for dep in target.dependencies {
            switch dep {
            case .target(let t):
                print(t)
                if let t = t as? SwiftSourceModuleTarget {
                    dump(t)
                }
            case .product(let p):
                print(p.name)
            default:
                print(dep)
            }
        }
    }
}
