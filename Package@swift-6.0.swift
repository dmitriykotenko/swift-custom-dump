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
      ],
      swiftSettings: [
        .unsafeFlags([
          "-Xfrontend",
          "-disable-round-trip-debug-types"
        ], .when(configuration: .debug))
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ],
      swiftSettings: [
        .unsafeFlags([
          "-Xfrontend",
          "-disable-round-trip-debug-types"
        ], .when(configuration: .debug))
      ]
    ),
  ]
)
