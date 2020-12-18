
import Foundation

public struct ProtocolName : RawRepresentable, Equatable {
    public let rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension ProtocolName : ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
    
}

extension ProtocolName {
    
    // Swift
    public static let binaryFloatingPoint: ProtocolName = "BinaryFloatingPoint"
    public static let encodable: ProtocolName = "Encodable"
    public static let decodable: ProtocolName = "Decodable"
    public static let randomNumberGenerator: ProtocolName = "RandomNumberGenerator"
    public static let hashable: ProtocolName = "Hashable"
    public static let numeric: ProtocolName = "Numeric"
    public static let bidirectionalCollection: ProtocolName = "BidirectionalCollection"
    public static let randomAccessCollection: ProtocolName = "RandomAccessCollection"
    public static let comparable: ProtocolName = "Comparable"
    public static let collection: ProtocolName = "Collection"
    public static let mutableCollection: ProtocolName = "MutableCollection"
    public static let rangeReplaceableCollection: ProtocolName = "RangeReplaceableCollection"
    public static let equatable: ProtocolName = "Equatable"
    public static let sequence: ProtocolName = "Sequence"
    public static let iteratorProtocol: ProtocolName = "IteratorProtocol"
    public static let unsignedInteger: ProtocolName = "UnsignedInteger"
    public static let rangeExpression: ProtocolName = "RangeExpression"
    public static let strideable: ProtocolName = "Strideable"
    public static let rawRepresentable: ProtocolName = "RawRepresentable"
    public static let stringProtocol: ProtocolName = "StringProtocol"
    public static let signedInteger: ProtocolName = "SignedInteger"
    public static let binaryInteger: ProtocolName = "BinaryInteger"
    public static let identifiable: ProtocolName = "Identifiable"
    
    // SwiftUI
    public static let view: ProtocolName = "View"
}
