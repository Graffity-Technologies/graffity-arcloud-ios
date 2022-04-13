// swift-tools-version: 5.4

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
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "GraffityARCloud",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.2.7.xcframework.zip",
            checksum: "793da8eff151dd94a1ff8c55580bf52fd6ceee924591c6586a0f4032e693d7b3"
        )
    ]
)
