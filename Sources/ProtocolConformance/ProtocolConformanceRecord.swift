
import Foundation

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

@_silgen_name("swift_conformsToProtocol")
private func _conformsToProtocol(
    _ type: Any.Type,
    _ protocolDescriptor: UnsafeMutablePointer<ProtocolDescriptor>
) -> UnsafeRawPointer?
