
import Foundation
import ProtocolConformance
import ProtocolType
import Casting
import CContext

public protocol AssociatedTypeRequirementsVisitor {
    associatedtype Visitor
    associatedtype Input
    associatedtype Output

    func _test()
}

extension AssociatedTypeRequirementsVisitor {

    public func callAsFunction(_ value: Any) -> Output? {
        if _isTesting {
            _test()
            _testAssocaitedTypeRequirementVisitors(false)
        }
        
        guard let visitorWitnessTable = ProtocolConformanceRecord(implementationType: Self.self, protocolType: Visitor.self) else { return nil }
        return withCasted(value, as: Input.self) { casted in
            let functionPointer = visitorWitnessTable.witnessTable!.assumingMemoryBound(to: UnsafeRawPointer.self).advanced(by: 2).pointee
            let function = unsafeBitCast(functionPointer, to: (@convention(thin) (CastedProtocolValue) -> Output).self)
            return withUnsafePointer(to: self) { selfPointer in
                set_self_pointer(UnsafeMutableRawPointer(mutating: UnsafeRawPointer(selfPointer)))
                return function(casted)
            }
        }
    }

}
