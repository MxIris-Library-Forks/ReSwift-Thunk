// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ReSwiftThunk",
    products: [
      .library(name: "ReSwiftThunk", targets: ["ReSwiftThunk"]),
      .library(name: "ReSwiftThunkTesting", targets: ["ReSwiftThunkTesting"])
    ],
    dependencies: [
        .package(url: "https://github.com/MxIris-Library-Forks/ReSwift", branch: "master")
    ],
    targets: [
      .target(
        name: "ReSwiftThunk",
        dependencies: [
          "ReSwift"
        ],
        path: "ReSwift-Thunk"
      ),
      .target(
        name: "ReSwiftThunkTesting",
        path: "ReSwift-ThunkTests/",
        sources: ["ExpectThunk.swift"]
      )
    ]
)
