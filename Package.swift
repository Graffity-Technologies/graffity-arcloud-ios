// swift-tools-version: 6.0

import PackageDescription

// The framework statically embeds its dependencies (gRPC, NIO, Protobuf, Lottie), all
// behind Swift 6 `internal import`, so consumers need none of them. Do not re-declare
// them here: SPM would link a second, unused copy into every host app. The thin
// `GraffityARCloud` target only re-exports the binary module.
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
    targets: [
        .binaryTarget(
            name: "GraffityARCloudBinary",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-5.6.0.xcframework.zip",
            checksum: "0a8a572b231014ca1c58dff6f0d292c7d2bb28d5cf0892232fc20d5ff719abf4"
        ),
        .target(
            name: "GraffityARCloud",
            dependencies: ["GraffityARCloudBinary"]
        ),
    ]
)
