// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "chmediapipe",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "chmediapipe", targets: ["MediaPipeTasksVision"]),
  ],
  targets: [
    .binaryTarget(
      name: "MediaPipeTasksVision",
      path: "MediaPipeTasksVision.xcframework"
    )
//    .binaryTarget(
//      name: "MediaPipeTasksVision",
//      url: "https://dl.google.com/cpdc/20240307-145112/MediaPipeTasksVision-0.10.12.tar.gz",
//      checksum: "38fa09f98465d26db784f51b8bd41299cbf571c5ef26595e285cf4d44ead6af4"
//    )
//    .testTarget(name: "chmediapipeTests", dependencies: ["chmediapipe"]),
  ]
)
