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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-2.0.1.xcframework.zip",
            checksum: "7e7f3249fd5c523b291c7a4d386740dc5e1f5b9c5dd338f0ce67bcd1c982e6e9"
        )
    ]
)
