// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift_playground",
  platforms: [.macOS(.v13)],
  products: [
    .executable(name: "swift_playground", targets: ["swift_playground"])
  ],
  targets: [
    .executableTarget(
      name: "swift_playground",
      dependencies: ["Utilities", "DataModel", "Experiments"],
      path: "Sources/swift_playground"
    ),
    .target(
      name: "Utilities",
      path: "Sources/Utilities"
    ),
    .target(
      name: "DataModel",
      path: "Sources/DataModel"
    ),
    .target(
      name: "Experiments",
      path: "Sources/Experiments"
    ),
  ]
)
