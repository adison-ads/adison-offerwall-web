// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.8"
let checksum = "0bf432b40fe9d09261a5830d0b05c1b056cd68eccdf36b29de759c8316a784e3"
let commonVersion = "1.1.0"

let package = Package(
    name: "AdisonOfferwallWeb",
    products: [
        .library(
            name: "AdisonOfferwallWeb",
            targets: ["AdisonOfferwallWeb", "AdisonOfferwallWebTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-common", exact: Version(stringLiteral: commonVersion))
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallWeb",
            url: "https://github.com/adison-ads/adison-offerwall-web/releases/download/\(version)/AdisonOfferwallWeb.zip",
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallWebTarget",
            dependencies: [
                .product(name: "AdisonOfferwallCommon", package: "adison-offerwall-common")
            ],
            path: "Sources"
        )
    ]
)
