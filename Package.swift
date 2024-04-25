// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "GraffityARCloud",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "GraffityARCloud",
            targets: ["GraffityARCloud"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GraffityARCloud",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-2.2.0.xcframework.zip",
            checksum: "207a545efe7d74b7a9ebae1c3489a25a8b1b4ab2514f9e9973ded5225f01f7cf"
        )
    ]
)
