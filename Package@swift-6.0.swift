// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "swift-custom-dump",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "CustomDump",
      targets: ["CustomDump"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/dmitriykotenko/SwiftCollectionDifference.git", branch: "main")
  ],
  targets: [
    .target(
      name: "CustomDump",
      dependencies: [
        "SwiftCollectionDifference"
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ]
    ),
  ]
)
