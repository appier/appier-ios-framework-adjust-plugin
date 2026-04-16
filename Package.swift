// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
    name: "AppierFrameworkAdjustPlugin",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppierAdjustPlugin",
            targets: ["AppierAdjustPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/appier/appier-ios-framework", from: "8.7.0"),
        .package(url: "https://github.com/adjust/ios_sdk", .upToNextMinor(from: "5.6.0"))
    ],
    targets: [
        .binaryTarget(
            name: "AppierAdjustPluginBinary",
            path: "AppierAdjustPlugin.xcframework"
        ),
        .target(
            name: "AppierAdjustPlugin",
            dependencies: [
                .target(name: "AppierAdjustPluginBinary"),
                .product(name: "AppierFramework", package: "appier-ios-framework"),
                .product(name: "AdjustSdk", package: "ios_sdk")
            ],
            path: "Sources/AppierPluginWrapper",
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("StoreKit"),
                .linkedFramework("AdServices")
            ]
        )
    ]
)
