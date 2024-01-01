// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "PWTester",
    
    platforms: [.iOS(.v17)],
    
    products: [
        .library(
            name: "PFoundation",
            targets: ["PFoundation"]),
        
        .library(
            name: "PInterface",
            targets: ["PFoundation", "PInterface"]),
        
        .library(
            name: "PMain",
            targets: ["PMain", "PFoundation", "PInterface"])
    ],
    
    targets: [
        .binaryTarget(
            name: "PFoundation",
            path: "./Sources/PFoundation.xcframework"),
        
        .binaryTarget(
            name: "PInterface",
            path: "./Sources/PInterface.xcframework"),
        
        .binaryTarget(
            name: "PMain",
            path: "./Sources/PMain.xcframework"),
    ]
)
