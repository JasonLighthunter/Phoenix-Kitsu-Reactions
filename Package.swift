// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PhoenixKitsuReactions",
  products: [
    .library(name: "PhoenixKitsuReactions", targets: ["PhoenixKitsuReactions"])
  ],
  dependencies: [
    .package(url: "https://github.com/JasonLighthunter/Requestable.git", from: "1.0.0"),
    .package(url: "https://github.com/JasonLighthunter/Phoenix-Kitsu-Core.git", .branch("setup"))
  ],
  targets: [
    .target(name: "PhoenixKitsuReactions", dependencies: ["Requestable", "PhoenixKitsuCore"]),
    .testTarget(name: "PhoenixKitsuReactionsTests", dependencies: ["PhoenixKitsuReactions"])
  ]
)
