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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-3.2.6-no-truedepth-2.xcframework.zip",
            checksum: "fa398e95dc1a68403c71610163a5d6fd77bd7241263c7c1744c3838a2e5aea3f"
        )
    ]
)
