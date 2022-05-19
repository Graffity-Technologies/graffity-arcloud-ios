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
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.7.3"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.3.0"),
    ],
    targets: [
        .target(
            name: "GraffityARCloudWrapper",
            dependencies: [
                .target(name: "GraffityARCloud")
            ],
            path: "Sources",
            publicHeadersPath: ""
        ),
        .binaryTarget(
            name: "GraffityARCloud",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.4.3.xcframework.zip",
            checksum: "d69ca1d1a25d19179fa1bb9395c46e3e48e4aa5c90475123f19a9c05009ecac9"
        )
    ]
)
