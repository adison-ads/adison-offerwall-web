// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.2"
let checksum = "e32b123b14dbe5211be82f91ecf4f833b50a5e811501b762e21cf4f0f3cc624f"
let commonVersion = "1.0.0"

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
