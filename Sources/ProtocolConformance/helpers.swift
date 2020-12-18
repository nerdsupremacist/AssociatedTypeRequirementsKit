
import ProtocolType

// Swift
public func isBinaryFloatingPoint(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .binaryFloatingPoint)
}

public func isEncodable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .encodable)
}

public func isDecodable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .decodable)
}

public func isRandomNumberGenerator(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .randomNumberGenerator)
}

public func isHashable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .hashable)
}

public func isNumeric(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .numeric)
}

public func isBidirectionalCollection(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .bidirectionalCollection)
}

public func isRandomAccessCollection(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .randomAccessCollection)
}

public func isComparable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .comparable)
}

public func isCollection(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .collection)
}

public func isMutableCollection(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .mutableCollection)
}

public func isRangeReplaceableCollection(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .rangeReplaceableCollection)
}

public func isEquatable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .equatable)
}

public func isSequence(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .sequence)
}

public func isIteratorProtocol(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .iteratorProtocol)
}

public func isUnsignedInteger(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .unsignedInteger)
}

public func isRangeExpression(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .rangeExpression)
}

public func isStrideable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .strideable)
}

public func isRawRepresentable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .rawRepresentable)
}

public func isStringProtocol(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .stringProtocol)
}

public func isSignedInteger(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .signedInteger)
}

public func isBinaryInteger(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .binaryInteger)
}

public func isIdentifiable(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .identifiable)
}

// SwiftUI
public func isView(_ type: Any.Type) -> Bool {
    return does(type, conformTo: .view)
}

