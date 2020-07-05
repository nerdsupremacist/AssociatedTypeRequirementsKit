
import Foundation

public struct ModuleName : RawRepresentable, Equatable {
    public let rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension ModuleName : ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
    
}


extension ModuleName {
    
    public static let swift: ModuleName = "Swift"
    public static let swiftUI: ModuleName = "SwiftUI"
    
}
