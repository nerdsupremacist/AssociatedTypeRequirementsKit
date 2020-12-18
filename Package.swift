// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AssociatedTypeRequirementsKit",
    products: [
        .library(name: "AssociatedTypeRequirementsKit",
                 targets: ["AssociatedTypeRequirementsVisitor", "Casting", "ValuePointers", "ProtocolType"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AssociatedTypeRequirementsVisitor",
            dependencies: ["Casting", "ValuePointers", "CContext"]),
        
        .target(
            name: "Casting",
            dependencies: ["ValuePointers", "ProtocolType"]),
        
        .target(
            name: "ValuePointers",
            dependencies: ["ProtocolConformance"]),
        
        .target(
            name: "ProtocolType",
            dependencies: []),
        
        .target(
            name: "ProtocolConformance",
            dependencies: ["ProtocolType"]),
        
        .target(
            name: "CContext",
            dependencies: []),
        
        .testTarget(
            name: "AssociatedTypeRequirementsKitTests",
            dependencies: ["AssociatedTypeRequirementsVisitor", "Casting", "ValuePointers", "ProtocolType"]),
    ]
)
