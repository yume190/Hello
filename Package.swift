// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hello",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Hello",
            targets: ["Hello"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/yume190/HelloLib", from: "1.0.0")
        .package(url: "https://github.com/yume190/HelloLib", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Hello",
            dependencies: [
                .product(name: "HelloLib", package: "HelloLib")
            ]
        ),
    ]
)
