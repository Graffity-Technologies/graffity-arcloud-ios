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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.3.1.xcframework.zip",
            checksum: "e37f8f369d338e2cf95746f1fe31e43c5dd66c840dfdcb2ced986586b8b078d2"
        )
    ]
)
