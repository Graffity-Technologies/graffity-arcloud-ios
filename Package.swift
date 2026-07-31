// swift-tools-version: 6.0

import PackageDescription

// The v5 framework links these packages internally (all imported with Swift 6
// `internal import`, so their types never appear in GraffityARCloud's public API).
// A `.binaryTarget` cannot declare dependencies, so the thin `GraffityARCloud`
// wrapper target below carries them and re-exports the binary module. Version
// ranges are pinned to what the private project archived against — keep them in
// sync with GraffityARCloudService.xcodeproj.
let package = Package(
    name: "GraffityARCloud",
    platforms: [
        .iOS(.v18),
    ],
    products: [
        .library(
            name: "GraffityARCloud",
            targets: ["GraffityARCloud"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift-2.git", .upToNextMajor(from: "2.4.1")),
        .package(url: "https://github.com/grpc/grpc-swift-nio-transport.git", .upToNextMajor(from: "2.7.0")),
        .package(url: "https://github.com/grpc/grpc-swift-protobuf", .upToNextMajor(from: "2.4.0")),
        .package(url: "https://github.com/airbnb/lottie-ios.git", .upToNextMajor(from: "4.6.0")),
    ],
    targets: [
        .binaryTarget(
            name: "GraffityARCloudBinary",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-2.0.0.xcframework.zip",
            checksum: "90c6ae71abf1eb368e86514fb87c551dc7aca5c6143e20d8f6f4e2003847a6cd"
        ),
        .target(
            name: "GraffityARCloud",
            dependencies: [
                "GraffityARCloudBinary",
                .product(name: "GRPCCore", package: "grpc-swift-2"),
                .product(name: "GRPCNIOTransportHTTP2", package: "grpc-swift-nio-transport"),
                .product(name: "GRPCProtobuf", package: "grpc-swift-protobuf"),
                .product(name: "Lottie", package: "lottie-ios"),
            ]
        ),
    ]
)
