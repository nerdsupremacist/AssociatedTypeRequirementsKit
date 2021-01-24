
import Foundation
import ProtocolConformance
import ProtocolType
import Casting
import CContext

public protocol AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor
    associatedtype Input
    associatedtype Output

    func _test()
}

extension AssociatedTypeRequirementsTypeVisitor {

    public func callAsFunction(_ type: Any.Type) -> Output? {
        if _isTesting {
            _test()
            _testAssocaitedTypeRequirementVisitors(false)
        }

        guard let visitorWitnessTable = ProtocolConformanceRecord(implementationType: Self.self, protocolType: Visitor.self) else { return nil }
        guard let conformanceRecord = ProtocolConformanceRecord(implementationType: type, protocolType: Input.self) else { return nil }

        let functionPointer = visitorWitnessTable.witnessTable!.assumingMemoryBound(to: UnsafeRawPointer.self).advanced(by: 2).pointee
        let function = unsafeBitCast(functionPointer, to: (@convention(thin) (UnsafeRawPointer, ProtocolConformanceRecord) -> Output).self)
        return withUnsafePointer(to: self) { selfPointer in
            let typePointer = unsafeBitCast(type, to: UnsafeRawPointer.self)
            set_self_pointer(UnsafeMutableRawPointer(mutating: UnsafeRawPointer(selfPointer)))
            return function(typePointer, conformanceRecord)
        }
    }

}
