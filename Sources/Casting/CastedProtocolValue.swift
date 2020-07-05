
import Foundation
import ProtocolConformance

public struct CastedProtocolValue {
    let value: UnsafeRawPointer
    let conformanceRecord: ProtocolConformanceRecord
}
