// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorOgury",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XMediatorOgury", targets: ["XMediatorOguryTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Ogury/ogury-sdk-spm.git", exact: "5.3.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.47.0")),
    ],
    targets: [
        .target(
            name: "XMediatorOguryTarget",
            dependencies: [
                .target(name: "XMediatorOgury"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "OgurySdk", package: "ogury-sdk-spm"),
            ],
            path: "XMediatorOguryTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorOgury",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorOgury/XMediatorOgury-5.3.1.0.zip",
            checksum: "ed896fc43d2716f3077b1a0c8b1628c4888d91213e60b2878b9f9a83ae6ef88f"
        ),
    ]
)
