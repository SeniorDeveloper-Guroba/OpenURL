// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenURL",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "OpenURL",
            targets: ["OpenURL"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "OpenURL",
            dependencies: []),
        .testTarget(
            name: "OpenURLTests",
            dependencies: ["OpenURL"]),
    ]
)
