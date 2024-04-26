// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CHMediaPipe",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "CHMediaPipe", targets: ["MediaPipeTasksVision"]),
  ],
  targets: [
    .target(
      name: "MediaPipeTaskWrapper",
      dependencies: [
        .target(name: "MediaPipeTasksVision"),
        .target(name: "MediaPipeTasksCommon")
      ]
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
