// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let checksum = "497fa86a06fc65c687be79cf88cb0a5c784ddd3e9707b97bfdc9598e92fc2d95"
let commonVersion = "1.0.2"

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
