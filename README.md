# AppierFrameworkAdjustPlugin

[![Version](https://img.shields.io/cocoapods/v/AppierFrameworkAdjustPlugin.svg?style=flat)](https://cocoapods.org/pods/AppierFrameworkAdjustPlugin)
[![License](https://img.shields.io/cocoapods/l/AppierFrameworkAdjustPlugin.svg?style=flat)](https://cocoapods.org/pods/AppierFrameworkAdjustPlugin)
[![Platform](https://img.shields.io/cocoapods/p/AppierFrameworkAdjustPlugin.svg?style=flat)](https://cocoapods.org/pods/AppierFrameworkAdjustPlugin)

Adjust MMP integration plugin for the Appier iOS SDK. This plugin self-registers with the Appier SDK at launch — no additional setup code required.

## Requirements

- iOS 12.0+
- Appier iOS SDK 8.7.0+
- Adjust iOS SDK 5.6.x

## Installation

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'AppierFramework', '>= 8.7.0', '< 9.0.0'
pod 'AppierFrameworkAdjustPlugin', '>= 8.7.0', '< 9.0.0'
```

### Swift Package Manager

Add the package in Xcode via **File > Add Package Dependencies** and enter:

```
https://github.com/appier/appier-ios-framework-adjust-plugin
```

Or add it manually to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/appier/appier-ios-framework-adjust-plugin", from: "8.7.0")
]
```

Then add `AppierAdjustPlugin` to your target's dependencies.

#### Required Linker Flag

When using Swift Package Manager, add `-ObjC` to **Other Linker Flags** in your target's Build Settings. This is required for the plugin's self-registration mechanism to work correctly.

## Configuration

The Adjust App Token is configured through the Appier remote config — no token setup is needed on the client side. Please contact Appier to complete the configuration on the dashboard.

## How It Works

The plugin uses an Objective-C `+load` method to register itself with the Appier SDK automatically when the binary is loaded. No changes to your app's initialization code are needed.

## Author

Appier Inc.

## License

Available under the MIT license. See the LICENSE file for more info.

## Documentation

Refer to [Appier's Documentation](https://docs.aiqua.appier.com)
