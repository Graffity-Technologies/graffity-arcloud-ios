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
            url: "https://graffity-sdk-public.s3.ap-southeast-1.amazonaws.com/iOS/GraffityARCloud-3.2.6-no-truedepth-6.xcframework.zip",
            checksum: "182fc4b3ec2a080b458d31a2c527676a278d23ea154b2974d220fcfbfd09c2b3"
        )
    ]
)
