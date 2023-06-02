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
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.16.0"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.2.0"),
    ],
    targets: [
        .target(
            name: "GraffityARCloudWrapper",
            dependencies: [
                .target(name: "GraffityARCloud"),
            ],
            path: "Sources",
            publicHeadersPath: ""
        ),
        .binaryTarget(
            name: "GraffityARCloud",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.8.5.xcframework.zip",
            checksum: "3db0a63c63e9ab8f9f35054c19528f3b1cca09cda907078dc2000845da728538"
        )
    ]
)
