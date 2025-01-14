// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build package.

import PackageDescription

let package = Package(
    name: "RoVaLog",
    products: [
        .library(
            name: "RoVa-Log",
            targets: ["RoVa-Log"]
        ),
    ],
    targets: [
        .target(
            name: "RoVa-Log"
        ),
        .testTarget(
            name: "RoVa-LogTests",
            dependencies: ["RoVa-Log"]
        ),
    ]
)
