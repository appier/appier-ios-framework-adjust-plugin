// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
    name: "AppierFrameworkAdjustPlugin",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppierAdjustPlugin",
            targets: ["AppierAdjustPluginWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/appier/appier-ios-framework", from: "8.7.0"),
        .package(url: "https://github.com/adjust/ios_sdk", .upToNextMinor(from: "5.6.0"))
    ],
    targets: [
        .binaryTarget(
            name: "AppierAdjustPlugin",
            path: "AppierAdjustPlugin.xcframework"
        ),
        .target(
            name: "AppierAdjustPluginWrapper",
            dependencies: [
                .target(name: "AppierAdjustPlugin"),
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
