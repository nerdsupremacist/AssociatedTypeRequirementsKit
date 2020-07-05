# AssociatedTypeRequirementsKit

Is Swift bothering you with those pesky error messages? Something something about associated type requirements. Like when you want to cast something to a protocol, but then:

![](swift-error-message.png)

Well not to worry. Introducing AssociatedTypeRequirementsKit 🤗
A collection of µFrameworks to help you get around those annoying scenarios!

Our example from before is dealt like so:

```swift
import AssociatedTypeRequirementsVisitor

private let hasher = AnyHasher()

func hashValue(value: Any) -> Int {
    return hasher(value) ?? 0
}

struct AnyHasher: HashableVisitor {
    func callAsFunction<T : Hashable>(_ value: T) -> Int {
        return value.hashValue 
    }
}
```

## Installation
### Swift Package Manager

You can install AssociatedTypeRequirementsKit via [Swift Package Manager](https://swift.org/package-manager/) by adding the following line to your `Package.swift`:

```swift
import PackageDescription

let package = Package(
    [...]
    dependencies: [
        .package(url: "https://github.com/nerdsupremacist/AssociatedTypeRequirementsKit.git", from: "0.1.0")
    ]
)
```

## Usage

### AssociatedTypeRequirementsVisitor

If you want to be able to call a function on a protocol with associated types, then you'll have to provide a generic function. Since closures cannot be generic, we have to use a protocol to encode this.

For example if you want to be able to turn take any a SwiftUI view into an AnyView, but you don't know the type at compile time, you can use `ViewVisitor`:

```swift
import AssociatedTypeRequirementsVisitor
import SwiftUI

private let converter = AnyViewConverter()

extension AnyView {
    init?(_ value: Any) {
        guard let view = converter(value) else { return nil }
        self = view
    }
}

private struct AnyViewConverter : ViewVisitor {
    // Provide a function that can be called with all the necessary type information
    func callAsFunction<T : View>(_ value: T) -> AnyView {
        return AnyView(value)
    }
}
```

This is because we are already shipping visitor protocols for the most important problematic protocols in Swift right now, and are extending the list as we go.
If you have to handle your own protocol you can do it as in the following example:

```swift
protocol MyProtocolVisitor: AssociatedTypeRequirementsVisitor {
    associatedtype Visitor = MyProtocolVisitor
    associatedtype Input = MyProtocol
    associatedtype Output
    
    func callAsFunction<T : MyProtocol>(_ value: T) -> Output
}
```

## Contributions
Contributions are welcome and encouraged!

## License
GraphZahl is available under the MIT license. See the LICENSE file for more info.

This project is being done under the supervision of the Chair for Applied Software Enginnering at the Technical University of Munich. The chair has everlasting rights to use and maintain this tool.
