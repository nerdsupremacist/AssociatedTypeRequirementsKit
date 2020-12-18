
import Foundation
import ProtocolType

// MARK: Getting the conformance record

public struct ProtocolConformanceRecord {
    public let type: Any.Type
    public let witnessTable: UnsafeRawPointer?
}

extension ProtocolConformanceRecord {
 
    public init?(implementationType: Any.Type, protocolType: Any.Type) {
        let metadata = ProtocolMetadata(type: protocolType)
        guard let witnessTable = _conformsToProtocol(implementationType, metadata.protocolDescriptorVector) else { return nil }
        self.init(type: implementationType, witnessTable: witnessTable)
    }
    
}

extension ProtocolConformanceRecord {

    public init?(implementationType: Any.Type, protocolType: ProtocolType) {
        self.init(implementationType: implementationType, protocolType: protocolType.type)
    }

}

// MARK: - Checking for conformance

public func does(_ implementationType: Any.Type, conformTo protocolType: Any.Type) -> Bool {
    let metadata = ProtocolMetadata(type: protocolType)
    return _conformsToProtocol(implementationType, metadata.protocolDescriptorVector) != nil
}

public func does(_ implementationType: Any.Type, conformTo protocolType: ProtocolType) -> Bool {
    return does(implementationType, conformTo: protocolType.type)
}

// MARK: - Structure of Protocol Metadata

private struct ProtocolDescriptor { }

private struct ProtocolMetadata {
    let kind: Int
    let layoutFlags: UInt32
    let numberOfProtocols: UInt32
    let protocolDescriptorVector: UnsafeMutablePointer<ProtocolDescriptor>

    init(type: Any.Type) {
        self = unsafeBitCast(type, to: UnsafeMutablePointer<Self>.self).pointee
    }
}

// MARK: - Runtime functions

@_silgen_name("swift_conformsToProtocol")
private func _conformsToProtocol(
    _ type: Any.Type,
    _ protocolDescriptor: UnsafeMutablePointer<ProtocolDescriptor>
) -> UnsafeRawPointer?
