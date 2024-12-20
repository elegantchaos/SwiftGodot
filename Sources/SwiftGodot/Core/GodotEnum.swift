//
//  GodotEnum.swift
//  SwiftGodot
//
//  Created by Sam Deane on 20/12/2024.
//

public protocol GodotEnum: CaseIterable, CustomDebugStringConvertible {
    var name: String? { get }
}

public extension GodotEnum {
    var debugDescription: String {
        ".\(name)"
    }
}

enum Test: CustomDebugStringConvertible {
    case blah
    
    var debugDescription: String {
        self.name
    }
}
