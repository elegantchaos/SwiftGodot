//
//  GodotEnum.swift
//  SwiftGodot
//
//  Created by Sam Deane on 20/12/2024.
//

public protocol GodotEnum: CaseIterable {
    var godotDescription: String { get }
}

public extension GodotEnum {
    var godotDescription: String { return ".\(self)" }
}
