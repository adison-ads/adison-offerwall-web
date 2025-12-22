// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.0"
let checksum = "dc28c5085f3a3a96058b77662e85b797cd50c16f3a4708c77d9d279db6975748"
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
