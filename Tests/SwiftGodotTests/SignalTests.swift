import XCTest
import SwiftGodotTestability
@testable import SwiftGodot

@Godot
private class TestSignalNode: Node {
    @Signal var mySignal: SignalWithArguments<Int, String>
    var receivedInt: Int? = nil
    var receivedString: String? = nil
    
    @Callable func receiveSignal (_ age: Int, name: String) {
        receivedInt = age
        receivedString = name
    }
}

final class SignalTests: GodotTestCase {
    
    override static var godotSubclasses: [Wrapped.Type] {
        return [TestSignalNode.self]
    }
    
    func testUserDefinedSignal() {
        let node = TestSignalNode()
        var signalReceived = false

        node.mySignal.connect { age, name in
            XCTAssertEqual (age, 22)
            XCTAssertEqual (name, "Sam")
            signalReceived = true
        }
        node.mySignal.emit(22, "Sam")
        XCTAssertTrue (signalReceived, "signal should have been received")
    }

    func testBuiltInSignalWithNoArgument() {
        let node = Node()
        var signalReceived = false
        node.ready.connect {
            signalReceived = true
        }
        node.ready.emit()
        XCTAssertTrue (signalReceived, "signal should have been received")
    }
    
    func testBuiltInSignalWithArgument() {
        let node = Node()
        var signalReceived = false
        node.childExitingTree.connect { (nodeParameter: Node?) in // full signature is specified here to check that it's being generated with the right types
            signalReceived = true
            XCTAssertEqual(node, nodeParameter)
        }
        node.childExitingTree.emit(node)
        XCTAssertTrue (signalReceived, "signal should have been received")
    }
    
    func testBuiltInSignalWithPrimitiveArguments() {
        let node = AnimationNode()
        var signalReceived = false
        node.animationNodeRenamed.connect { (id: Int64, oldName: String, newName: String) in  // full signature is specified here to check that it's being generated with the right types
            signalReceived = true
            XCTAssertEqual(id, 123)
            XCTAssertEqual(oldName, "old name")
            XCTAssertEqual(newName, "new name")
        }
        node.animationNodeRenamed.emit(123, "old name", "new name")
        XCTAssertTrue (signalReceived, "signal should have been received")
    }
}

