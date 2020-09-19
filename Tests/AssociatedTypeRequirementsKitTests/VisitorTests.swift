
import XCTest
import AssociatedTypeRequirementsVisitor

#if canImport(SwiftUI)
import SwiftUI
#endif

final class VisitorTests: XCTestCase {
    func testVisitDecodableType() {
        let type: Any.Type = SomeDedecodable.self
        let json = """
        {
         "a": "A",
         "b": "B"
        }
        """
        let value = JSONDecoder().decodeIfPossible(type, from: json.data(using: .utf8)!)
        XCTAssertNotNil(value)
    }

    func testVisitHashable() {
        let value = "String"
        let hashed = value.hashValue
        let hasher = AnyHasher()
        let recledtedHash = hasher(value as Any)
        XCTAssertNotNil(recledtedHash)
        XCTAssertEqual(hashed, recledtedHash)
    }
    
    #if canImport(SwiftUI)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    func testVisitView() {
        let value: Any = Text("One two three four")
        let eraser = ViewTypeEraser()
        let anyView = eraser(value)
        XCTAssertNotNil(anyView)
        XCTAssertNil(eraser(123))
    }
    #endif
}

struct SomeDedecodable: Decodable {
    let a: String
    let b: String
}

extension JSONDecoder {

    func decodeIfPossible(_ type: Any.Type, from data: Data) -> Any? {
        let visitor = JSONDecoderVisitor(decoder: self, data: data)
        return visitor(type)
    }

}

private struct JSONDecoderVisitor: DecodableTypeVisitor {
    let decoder: JSONDecoder
    let data: Data

    func callAsFunction<T : Decodable>(_ type: T.Type) -> Any {
        return try! decoder.decode(type, from: data)
    }
}

struct AnyHasher: HashableVisitor {
    func callAsFunction<T : Hashable>(_ value: T) -> Int {
        var hasher = Hasher()
        value.hash(into: &hasher)
        return hasher.finalize()
    }
}

#if canImport(SwiftUI)
@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct ViewTypeEraser: ViewVisitor {
    
    func callAsFunction<T : View>(_ value: T) -> AnyView {
        if let value = value as? AnyView {
            return value
        }
        return AnyView(value)
    }
    
}
#endif
