
import Foundation
import ProtocolType


// Swift
#if canImport(Swift)
import Swift

public protocol BinaryFloatingPointVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = BinaryFloatingPointVisitor
    associatedtype Input = BinaryFloatingPoint
    associatedtype Output
    
    func callAsFunction<T : BinaryFloatingPoint>(_ value: T) -> Output
}

public protocol EncodableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = EncodableVisitor
    associatedtype Input = Encodable
    associatedtype Output
    
    func callAsFunction<T : Encodable>(_ value: T) -> Output
}

public protocol DecodableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = DecodableVisitor
    associatedtype Input = Decodable
    associatedtype Output
    
    func callAsFunction<T : Decodable>(_ value: T) -> Output
}

public protocol RandomNumberGeneratorVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RandomNumberGeneratorVisitor
    associatedtype Input = RandomNumberGenerator
    associatedtype Output
    
    func callAsFunction<T : RandomNumberGenerator>(_ value: T) -> Output
}

public protocol HashableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = HashableVisitor
    associatedtype Input = Hashable
    associatedtype Output
    
    func callAsFunction<T : Hashable>(_ value: T) -> Output
}

public protocol NumericVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = NumericVisitor
    associatedtype Input = Numeric
    associatedtype Output
    
    func callAsFunction<T : Numeric>(_ value: T) -> Output
}

public protocol BidirectionalCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = BidirectionalCollectionVisitor
    associatedtype Input = BidirectionalCollection
    associatedtype Output
    
    func callAsFunction<T : BidirectionalCollection>(_ value: T) -> Output
}

public protocol RandomAccessCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RandomAccessCollectionVisitor
    associatedtype Input = RandomAccessCollection
    associatedtype Output
    
    func callAsFunction<T : RandomAccessCollection>(_ value: T) -> Output
}

public protocol ComparableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = ComparableVisitor
    associatedtype Input = Comparable
    associatedtype Output
    
    func callAsFunction<T : Comparable>(_ value: T) -> Output
}

public protocol CollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = CollectionVisitor
    associatedtype Input = Collection
    associatedtype Output
    
    func callAsFunction<T : Collection>(_ value: T) -> Output
}

public protocol MutableCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = MutableCollectionVisitor
    associatedtype Input = MutableCollection
    associatedtype Output
    
    func callAsFunction<T : MutableCollection>(_ value: T) -> Output
}

public protocol RangeReplaceableCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RangeReplaceableCollectionVisitor
    associatedtype Input = RangeReplaceableCollection
    associatedtype Output
    
    func callAsFunction<T : RangeReplaceableCollection>(_ value: T) -> Output
}

public protocol EquatableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = EquatableVisitor
    associatedtype Input = Equatable
    associatedtype Output
    
    func callAsFunction<T : Equatable>(_ value: T) -> Output
}

public protocol SequenceVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = SequenceVisitor
    associatedtype Input = Sequence
    associatedtype Output
    
    func callAsFunction<T : Sequence>(_ value: T) -> Output
}

public protocol IteratorProtocolVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = IteratorProtocolVisitor
    associatedtype Input = IteratorProtocol
    associatedtype Output
    
    func callAsFunction<T : IteratorProtocol>(_ value: T) -> Output
}

public protocol UnsignedIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = UnsignedIntegerVisitor
    associatedtype Input = UnsignedInteger
    associatedtype Output
    
    func callAsFunction<T : UnsignedInteger>(_ value: T) -> Output
}

public protocol RangeExpressionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RangeExpressionVisitor
    associatedtype Input = RangeExpression
    associatedtype Output
    
    func callAsFunction<T : RangeExpression>(_ value: T) -> Output
}

public protocol StrideableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = StrideableVisitor
    associatedtype Input = Strideable
    associatedtype Output
    
    func callAsFunction<T : Strideable>(_ value: T) -> Output
}

public protocol RawRepresentableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RawRepresentableVisitor
    associatedtype Input = RawRepresentable
    associatedtype Output
    
    func callAsFunction<T : RawRepresentable>(_ value: T) -> Output
}

public protocol StringProtocolVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = StringProtocolVisitor
    associatedtype Input = StringProtocol
    associatedtype Output
    
    func callAsFunction<T : StringProtocol>(_ value: T) -> Output
}

public protocol SignedIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = SignedIntegerVisitor
    associatedtype Input = SignedInteger
    associatedtype Output
    
    func callAsFunction<T : SignedInteger>(_ value: T) -> Output
}

public protocol BinaryIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = BinaryIntegerVisitor
    associatedtype Input = BinaryInteger
    associatedtype Output
    
    func callAsFunction<T : BinaryInteger>(_ value: T) -> Output
}

#endif

// SwiftUI
#if canImport(SwiftUI)
import SwiftUI

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public protocol ViewVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = ViewVisitor
    associatedtype Input = View
    associatedtype Output
    
    func callAsFunction<T : View>(_ value: T) -> Output
}

#endif
