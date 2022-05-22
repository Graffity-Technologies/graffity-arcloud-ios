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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.4.10.xcframework.zip",
            checksum: "aff67648aea7b15a9554739b73be30f3ecc5b0e993052beffa9be266c98a871d"
        )
    ]
)
