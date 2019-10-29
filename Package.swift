// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PiAnimation",
    platforms: [.iOS(.v10),],
    products: [
        .library(name: "PiAnimation", type: .dynamic, targets: ["PiAnimation"]),
    ],
    targets: [
        .target(
            name: "PiAnimation",
            path: "PiAnimation"

                 ),
    ]
)
