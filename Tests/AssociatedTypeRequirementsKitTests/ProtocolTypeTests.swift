
import XCTest
import ProtocolType

final class ProtocolTypeTests: XCTestCase {
    func testTypeIsResolved() {
        let type = ProtocolType(moduleName: "AssociatedTypeRequirementsKitTests", protocolName: "TestProtocol")
        XCTAssertNotNil(type)
    }
    
    func testWrongTypeIsNil() {
        let type = ProtocolType(moduleName: "AssociatedTypeRequirementsKitTests", protocolName: "SomeType")
        XCTAssertNil(type)
    }
}

protocol TestProtocol { }
