
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

public protocol BinaryFloatingPointTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = BinaryFloatingPointTypeVisitor
    associatedtype Input = BinaryFloatingPoint
    associatedtype Output

    func callAsFunction<T : BinaryFloatingPoint>(_ type: T.Type) -> Output
}

public protocol EncodableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = EncodableVisitor
    associatedtype Input = Encodable
    associatedtype Output
    
    func callAsFunction<T : Encodable>(_ value: T) -> Output
}

public protocol EncodableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = EncodableTypeVisitor
    associatedtype Input = Encodable
    associatedtype Output

    func callAsFunction<T : Encodable>(_ type: T.Type) -> Output
}

public protocol DecodableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = DecodableVisitor
    associatedtype Input = Decodable
    associatedtype Output
    
    func callAsFunction<T : Decodable>(_ value: T) -> Output
}

public protocol DecodableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = DecodableTypeVisitor
    associatedtype Input = Decodable
    associatedtype Output

    func callAsFunction<T : Decodable>(_ type: T.Type) -> Output
}

public protocol RandomNumberGeneratorVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RandomNumberGeneratorVisitor
    associatedtype Input = RandomNumberGenerator
    associatedtype Output
    
    func callAsFunction<T : RandomNumberGenerator>(_ value: T) -> Output
}

public protocol RandomNumberGeneratorTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = RandomNumberGeneratorTypeVisitor
    associatedtype Input = RandomNumberGenerator
    associatedtype Output

    func callAsFunction<T : RandomNumberGenerator>(_ type: T.Type) -> Output
}

public protocol HashableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = HashableVisitor
    associatedtype Input = Hashable
    associatedtype Output
    
    func callAsFunction<T : Hashable>(_ value: T) -> Output
}

public protocol HashableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = HashableTypeVisitor
    associatedtype Input = Hashable
    associatedtype Output

    func callAsFunction<T : Hashable>(_ type: T.Type) -> Output
}

public protocol NumericVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = NumericVisitor
    associatedtype Input = Numeric
    associatedtype Output
    
    func callAsFunction<T : Numeric>(_ value: T) -> Output
}

public protocol NumericTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = NumericTypeVisitor
    associatedtype Input = Numeric
    associatedtype Output

    func callAsFunction<T : Numeric>(_ type: T.Type) -> Output
}

public protocol BidirectionalCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = BidirectionalCollectionVisitor
    associatedtype Input = BidirectionalCollection
    associatedtype Output
    
    func callAsFunction<T : BidirectionalCollection>(_ value: T) -> Output
}

public protocol BidirectionalCollectionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = BidirectionalCollectionTypeVisitor
    associatedtype Input = BidirectionalCollection
    associatedtype Output

    func callAsFunction<T : BidirectionalCollection>(_ type: T.Type) -> Output
}

public protocol RandomAccessCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RandomAccessCollectionVisitor
    associatedtype Input = RandomAccessCollection
    associatedtype Output
    
    func callAsFunction<T : RandomAccessCollection>(_ value: T) -> Output
}

public protocol RandomAccessCollectionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = RandomAccessCollectionTypeVisitor
    associatedtype Input = RandomAccessCollection
    associatedtype Output

    func callAsFunction<T : RandomAccessCollection>(_ type: T.Type) -> Output
}

public protocol ComparableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = ComparableVisitor
    associatedtype Input = Comparable
    associatedtype Output
    
    func callAsFunction<T : Comparable>(_ value: T) -> Output
}

public protocol ComparableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = ComparableTypeVisitor
    associatedtype Input = Comparable
    associatedtype Output

    func callAsFunction<T : Comparable>(_ type: T.Type) -> Output
}

public protocol CollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = CollectionVisitor
    associatedtype Input = Collection
    associatedtype Output
    
    func callAsFunction<T : Collection>(_ value: T) -> Output
}

public protocol CollectionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = CollectionTypeVisitor
    associatedtype Input = Collection
    associatedtype Output

    func callAsFunction<T : Collection>(_ type: T.Type) -> Output
}

public protocol MutableCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = MutableCollectionVisitor
    associatedtype Input = MutableCollection
    associatedtype Output
    
    func callAsFunction<T : MutableCollection>(_ value: T) -> Output
}

public protocol MutableCollectionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = MutableCollectionTypeVisitor
    associatedtype Input = MutableCollection
    associatedtype Output

    func callAsFunction<T : MutableCollection>(_ type: T.Type) -> Output
}

public protocol RangeReplaceableCollectionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RangeReplaceableCollectionVisitor
    associatedtype Input = RangeReplaceableCollection
    associatedtype Output
    
    func callAsFunction<T : RangeReplaceableCollection>(_ value: T) -> Output
}

public protocol RangeReplaceableCollectionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = RangeReplaceableCollectionTypeVisitor
    associatedtype Input = RangeReplaceableCollection
    associatedtype Output

    func callAsFunction<T : RangeReplaceableCollection>(_ type: T.Type) -> Output
}

public protocol EquatableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = EquatableVisitor
    associatedtype Input = Equatable
    associatedtype Output
    
    func callAsFunction<T : Equatable>(_ value: T) -> Output
}

public protocol EquatableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = EquatableTypeVisitor
    associatedtype Input = Equatable
    associatedtype Output

    func callAsFunction<T : Equatable>(_ type: T.Type) -> Output
}

public protocol SequenceVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = SequenceVisitor
    associatedtype Input = Sequence
    associatedtype Output
    
    func callAsFunction<T : Sequence>(_ value: T) -> Output
}

public protocol SequenceTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = SequenceTypeVisitor
    associatedtype Input = Sequence
    associatedtype Output

    func callAsFunction<T : Sequence>(_ type: T.Type) -> Output
}

public protocol IteratorProtocolVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = IteratorProtocolVisitor
    associatedtype Input = IteratorProtocol
    associatedtype Output
    
    func callAsFunction<T : IteratorProtocol>(_ value: T) -> Output
}

public protocol IteratorProtocolTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = IteratorProtocolTypeVisitor
    associatedtype Input = IteratorProtocol
    associatedtype Output

    func callAsFunction<T : IteratorProtocol>(_ type: T.Type) -> Output
}

public protocol UnsignedIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = UnsignedIntegerVisitor
    associatedtype Input = UnsignedInteger
    associatedtype Output
    
    func callAsFunction<T : UnsignedInteger>(_ value: T) -> Output
}

public protocol UnsignedIntegerTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = UnsignedIntegerTypeVisitor
    associatedtype Input = UnsignedInteger
    associatedtype Output

    func callAsFunction<T : UnsignedInteger>(_ type: T.Type) -> Output
}

public protocol RangeExpressionVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RangeExpressionVisitor
    associatedtype Input = RangeExpression
    associatedtype Output
    
    func callAsFunction<T : RangeExpression>(_ value: T) -> Output
}

public protocol RangeExpressionTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = RangeExpressionTypeVisitor
    associatedtype Input = RangeExpression
    associatedtype Output

    func callAsFunction<T : RangeExpression>(_ type: T.Type) -> Output
}

public protocol StrideableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = StrideableVisitor
    associatedtype Input = Strideable
    associatedtype Output
    
    func callAsFunction<T : Strideable>(_ value: T) -> Output
}

public protocol StrideableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = StrideableTypeVisitor
    associatedtype Input = Strideable
    associatedtype Output

    func callAsFunction<T : Strideable>(_ type: T.Type) -> Output
}

public protocol RawRepresentableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = RawRepresentableVisitor
    associatedtype Input = RawRepresentable
    associatedtype Output
    
    func callAsFunction<T : RawRepresentable>(_ value: T) -> Output
}

public protocol RawRepresentableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = RawRepresentableTypeVisitor
    associatedtype Input = RawRepresentable
    associatedtype Output

    func callAsFunction<T : RawRepresentable>(_ type: T.Type) -> Output
}

public protocol StringProtocolVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = StringProtocolVisitor
    associatedtype Input = StringProtocol
    associatedtype Output
    
    func callAsFunction<T : StringProtocol>(_ value: T) -> Output
}

public protocol StringProtocolTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = StringProtocolTypeVisitor
    associatedtype Input = StringProtocol
    associatedtype Output

    func callAsFunction<T : StringProtocol>(_ type: T.Type) -> Output
}

public protocol SignedIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = SignedIntegerVisitor
    associatedtype Input = SignedInteger
    associatedtype Output
    
    func callAsFunction<T : SignedInteger>(_ value: T) -> Output
}

public protocol SignedIntegerTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = SignedIntegerTypeVisitor
    associatedtype Input = SignedInteger
    associatedtype Output

    func callAsFunction<T : SignedInteger>(_ type: T.Type) -> Output
}

public protocol BinaryIntegerVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = BinaryIntegerVisitor
    associatedtype Input = BinaryInteger
    associatedtype Output
    
    func callAsFunction<T : BinaryInteger>(_ value: T) -> Output
}

public protocol BinaryIntegerTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = BinaryIntegerTypeVisitor
    associatedtype Input = BinaryInteger
    associatedtype Output

    func callAsFunction<T : BinaryInteger>(_ type: T.Type) -> Output
}

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public protocol IdentifiableVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = IdentifiableVisitor
    associatedtype Input = Identifiable
    associatedtype Output
    
    func callAsFunction<T : Identifiable>(_ value: T) -> Output
}

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public protocol IdentifiableTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = IdentifiableTypeVisitor
    associatedtype Input = Identifiable
    associatedtype Output

    func callAsFunction<T : Identifiable>(_ type: T.Type) -> Output
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

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public protocol ViewTypeVisitor: AssociatedTypeRequirementsTypeVisitor {
    associatedtype Visitor = ViewTypeVisitor
    associatedtype Input = View
    associatedtype Output

    func callAsFunction<T : View>(_ type: T.Type) -> Output
}

#endif
