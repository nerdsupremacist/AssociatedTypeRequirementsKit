
import XCTest
import AssociatedTypeRequirementsVisitor

#if canImport(SwiftUI)
import SwiftUI
#endif

final class VisitorTests: XCTestCase {
    func testVisitHashable() {
        let value = "String"
        let hashed = value.hashValue
        let hasher = AnyHasher()
        let recledtedHash = hasher(value as Any)
        XCTAssertNotNil(recledtedHash)
        XCTAssertEqual(hashed, recledtedHash)
    }
    
    #if canImport(SwiftUI)
    @available(OSX 10.15, *)
    func testVisitView() {
        let value: Any = Text("One two three four")
        let eraser = ViewTypeEraser()
        let anyView = eraser(value)
        XCTAssertNotNil(anyView)
        XCTAssertNil(eraser(123))
    }
    #endif
}

struct AnyHasher: HashableVisitor {
    func callAsFunction<T : Hashable>(_ value: T) -> Int {
        var hasher = Hasher()
        value.hash(into: &hasher)
        return hasher.finalize()
    }
}

#if canImport(SwiftUI)
@available(OSX 10.15, *)
struct ViewTypeEraser: ViewVisitor {
    
    func callAsFunction<T : View>(_ value: T) -> AnyView {
        if let value = value as? AnyView {
            return value
        }
        return AnyView(value)
    }
    
}
#endif
