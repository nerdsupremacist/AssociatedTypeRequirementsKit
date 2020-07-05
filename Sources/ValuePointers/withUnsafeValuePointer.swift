

import Foundation
import ProtocolConformance

/// Pointer to actual value without knowing the type at compile time. It will point to the correct part no matter how it's internal memory works
public func withUnsafeValuePointer<Result>(to value: Any, body: (UnsafeRawPointer) throws -> Result) rethrows -> Result {
    return try pointable(for: type(of: value)).withUnsafeRawPointer(to: value, body: body)
}

/// Bytes of the actual value without knowing the value at compile time, even when it doesn't fit in the 32 bytes of Any
public func withUnsafeValueBytes<Result>(of value: Any, body: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result {
    return try pointable(for: type(of: value)).withUnsafeRawBytes(of: value, body: body)
}

private func pointable(for type: Any.Type) -> Pointable.Type {
    return fakeConformance(type)
}

private protocol Pointable { }
extension Pointable {
    static func withUnsafeRawPointer<Result>(to value: Any, body: (UnsafeRawPointer) throws -> Result) rethrows -> Result {
        return try withUnsafePointer(to: value as! Self) { try body(UnsafeRawPointer($0)) }
    }
    
    static func withUnsafeRawBytes<Result>(of value: Any, body: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result {
        return try withUnsafeBytes(of: value as! Self, body)
    }
}
