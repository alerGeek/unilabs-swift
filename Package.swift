// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swift",
    platforms: [
       .macOS(.v12)
    ],
    products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
        name: "App",
        targets: ["App"])
    ],
    targets: [
        .target(name: "App"),
        .executableTarget(name: "Run", dependencies: ["App"]),        
        .testTarget(
            name: "AppTests",
            dependencies: ["Run"]),
    ]
)
    