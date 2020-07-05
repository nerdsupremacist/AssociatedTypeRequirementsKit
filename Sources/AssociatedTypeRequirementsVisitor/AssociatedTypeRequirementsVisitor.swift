
import Foundation
import ProtocolConformance
import ProtocolType
import Casting

public protocol AssociatedTypeRequirementsVisitor {
    associatedtype Visitor
    associatedtype Input
    associatedtype Output
}

extension AssociatedTypeRequirementsVisitor {

    public func callAsFunction(_ value: Any) -> Output? {
        guard let visitorWitnessTable = ProtocolConformanceRecord(implementationType: Self.self, protocolType: Visitor.self) else { return nil }
        return withCasted(value, as: Input.self) { casted in
            let functionPointer = visitorWitnessTable.witnessTable!.assumingMemoryBound(to: UnsafeRawPointer.self).advanced(by: 2).pointee
            let function = unsafeBitCast(functionPointer, to: (@convention(thin) (CastedProtocolValue) -> Output).self)
            return function(casted)
        }
    }

}
