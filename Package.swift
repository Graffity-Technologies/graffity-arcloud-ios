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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-3.5.6.xcframework.zip",
            checksum: "5c238e61f22dfd65a9f5b6be55b23dd10207b65089c3a22b33739321c5593feb"
        )
    ]
)
