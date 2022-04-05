// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
//        .target(
//            name: "GraffityARCloud",
//            dependencies: []),
        .binaryTarget(
            name: "GraffityARCloud",
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-0.1.2.xcframework.zip",
            checksum: "7e6aea14849ddbd7c813d0a349b1f9fcf742616635f144db7827ddea5b8af3a6"
        ),
//        .testTarget(
//            name: "GraffityARCloudTests",
//            dependencies: ["GraffityARCloud"]),
    ]
)
