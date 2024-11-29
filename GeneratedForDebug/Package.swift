// swift-tools-version: 6.0

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "SwiftGodot",
    platforms: [
        .macOS(.v14),
        .iOS(.v15),
    ],
    products: [
      .library(
        name: "SwiftGodot",
        type: .dynamic,
        targets: ["SwiftGodot"]
      ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0"),
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/swiftlang/swift-syntax", from: "510.0.1"),
    ],
    targets: [
      .target(
        name: "SwiftGodot",
        dependencies: ["GDExtension"],
        //linkerSettings: linkerSettings,
        swiftSettings: [
            .swiftLanguageMode(.v5),
        ],
        plugins: ["SwiftGodotMacroLibrary"]
        ),

            // This allows the Swift code to call into the Godot bridge API (GDExtension)
      .target(
        name: "GDExtension",
        swiftSettings: [.swiftLanguageMode(.v5)]
      ),

    .macro(
        name: "SwiftGodotMacroLibrary",
        dependencies: [
            .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
            .product(name: "SwiftSyntax", package: "swift-syntax"),
            .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
        ],
        swiftSettings: [.swiftLanguageMode(.v5)]
    ),


    ]
)
