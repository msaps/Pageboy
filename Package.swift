// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pageboy",
    platforms: [
        .iOS(.v9),
        .tvOS(.v10)
    ],
    products: [
        .library(
            name: "Pageboy",
            targets: ["Pageboy iOS", "Pageboy tvOS"])
    ],
    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages which this package depends on.
            .target(
                name: "Pageboy iOS",
                path: ".",
                sources: ["Sources/Pageboy"]),
            .target(
                name: "Pageboy tvOS",
                path: ".",
                sources: ["Sources/Pageboy"]),
            .testTarget(
                name: "PageboyTests",
                dependencies: ["Pageboy iOS"]),
    ]
)
