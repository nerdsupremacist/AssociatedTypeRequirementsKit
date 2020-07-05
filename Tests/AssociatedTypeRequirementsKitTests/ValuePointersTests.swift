
import XCTest
import ValuePointers

final class ValuePointersTests: XCTestCase {
    struct BigStruct {
        let first: String
        let second: String
        let third: String
        let fourth: String
        let fifth: String
        let sixth: String
    }
    
    func testBytesAreCorrect() {
        let value = BigStruct(first: "1", second: "2", third: "3", fourth: "4", fifth: "5", sixth: "6")
        let normalCount = withUnsafeBytes(of: value) { $0.count }
        let anyCount = withUnsafeBytes(of: value as Any) { $0.count }
        let ourCount = withUnsafeValueBytes(of: value) { $0.count }
        
        XCTAssertNotEqual(normalCount, anyCount)
        XCTAssertEqual(normalCount, ourCount)
        
        let thirdString = withUnsafeValueBytes(of: value) { $0.baseAddress!.advanced(by: 2 * MemoryLayout<String>.size).load(as: String.self) }
        XCTAssertEqual(thirdString, "3")
    }
}
