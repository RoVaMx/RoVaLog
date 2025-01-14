// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build package.

import PackageDescription

let package = Package(
    name: "RoVaLog",
    products: [
           .library(
               name: "RoVaLog",
               targets: ["RoVaLog"])
       ],
    targets: [
        .target(
            name: "RoVaLog"
        ),
        .testTarget(
            name: "RoVa-LogTests",
            dependencies: ["RoVaLog"]
        ),
    ]
)
