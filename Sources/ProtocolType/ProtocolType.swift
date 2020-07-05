
import Foundation

public struct ProtocolType {
    public let type: Any.Type
    
    public init?(moduleName: ModuleName, protocolName: ProtocolName) {
        let name = mangledName(moduleName: moduleName, protocolName: protocolName)
        guard let type = _typeByName(name) else { return nil }
        self.type = type
    }
}

extension ProtocolType {
    
    // Swift
    public static let binaryFloatingPoint = ProtocolType(moduleName: .swift, protocolName: .binaryFloatingPoint)!
    public static let encodable = ProtocolType(moduleName: .swift, protocolName: .encodable)!
    public static let decodable = ProtocolType(moduleName: .swift, protocolName: .decodable)!
    public static let randomNumberGenerator = ProtocolType(moduleName: .swift, protocolName: .randomNumberGenerator)!
    public static let hashable = ProtocolType(moduleName: .swift, protocolName: .hashable)!
    public static let numeric = ProtocolType(moduleName: .swift, protocolName: .numeric)!
    public static let bidirectionalCollection = ProtocolType(moduleName: .swift, protocolName: .bidirectionalCollection)!
    public static let randomAccessCollection = ProtocolType(moduleName: .swift, protocolName: .randomAccessCollection)!
    public static let comparable = ProtocolType(moduleName: .swift, protocolName: .comparable)!
    public static let collection = ProtocolType(moduleName: .swift, protocolName: .collection)!
    public static let mutableCollection = ProtocolType(moduleName: .swift, protocolName: .mutableCollection)!
    public static let rangeReplaceableCollection = ProtocolType(moduleName: .swift, protocolName: .rangeReplaceableCollection)!
    public static let equatable = ProtocolType(moduleName: .swift, protocolName: .equatable)!
    public static let sequence = ProtocolType(moduleName: .swift, protocolName: .sequence)!
    public static let iteratorProtocol = ProtocolType(moduleName: .swift, protocolName: .iteratorProtocol)!
    public static let unsignedInteger = ProtocolType(moduleName: .swift, protocolName: .unsignedInteger)!
    public static let rangeExpression = ProtocolType(moduleName: .swift, protocolName: .rangeExpression)!
    public static let strideable = ProtocolType(moduleName: .swift, protocolName: .strideable)!
    public static let rawRepresentable = ProtocolType(moduleName: .swift, protocolName: .rawRepresentable)!
    public static let stringProtocol = ProtocolType(moduleName: .swift, protocolName: .stringProtocol)!
    public static let signedInteger = ProtocolType(moduleName: .swift, protocolName: .signedInteger)!
    public static let binaryInteger = ProtocolType(moduleName: .swift, protocolName: .binaryInteger)!
    
    // SwiftUI
    public static let view = ProtocolType(moduleName: .swiftUI, protocolName: .view)!
    
}

private func mangledName(moduleName: ModuleName, protocolName: ProtocolName) -> String {
    
    switch moduleName {
    case .swift:
        switch protocolName {
        case .encodable:
            return "SE"
        case .decodable:
            return "Sd"
        case .randomNumberGenerator:
            return "SG"
        case .hashable:
            return "SH"
        case .numeric:
            return "Sj"
        case .bidirectionalCollection:
            return "SK"
        case .randomAccessCollection:
            return "Sk"
        case .comparable:
            return "SL"
        case .mutableCollection:
            return "SM"
        case .rangeReplaceableCollection:
            return "Sm"
        case .equatable:
            return "SQ"
        case .sequence:
            return "ST"
        case .iteratorProtocol:
            return "St"
        case .unsignedInteger:
            return "SU"
        case .rangeExpression:
            return "SX"
        case .strideable:
            return "Sx"
        case .stringProtocol:
            return "Sy"
        case .signedInteger:
            return "SZ"
        case .binaryInteger:
            return "Sz"
        default:
            break
        }
    default:
        break
    }

    return "\(moduleName.rawValue.count)\(moduleName.rawValue)\(protocolName.rawValue.count)\(protocolName.rawValue)_p"
}
