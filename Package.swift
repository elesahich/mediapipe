// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CHMediaPipe",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "CHMediaPipe", targets: ["MediaPipeTasksVisionTarget"]),
  ],
  targets: [
    .target(
      name: "MediaPipeTasksVisionTarget",
      dependencies: [
        .target(name: "MediaPipeTasksVisionWrapper")
      ],
      path: "Sources/MediaPipeTasksVisionTarget"
    ),
    .target(
      name: "MediaPipeTasksVisionWrapper",
      dependencies: [
        .target(name: "MediaPipeTasksVision"),
        .target(name: "MediaPipeTasksCommon")
      ],
      path: "Sources/MediaPipeTasksVisionWrapper"
    ),
    .binaryTarget(
      name: "MediaPipeTasksVision",
      path: "MediaPipeTasksVision.xcframework"
    ),
    .binaryTarget(
      name: "MediaPipeTasksCommon",
      path: "MediaPipeTasksCommon.xcframework"
    )
  ]
)
