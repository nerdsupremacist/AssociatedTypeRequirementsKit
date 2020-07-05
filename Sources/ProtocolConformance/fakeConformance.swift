
import Foundation

public func fakeConformance<T>(_ type: Any.Type, as protocolType: T.Type = T.self) -> T {
    let conformance = ProtocolConformanceRecord(type: type, witnessTable: nil)
    return unsafeBitCast(conformance, to: protocolType)
}
