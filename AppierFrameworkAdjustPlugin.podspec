require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'version.json')))

Pod::Spec.new do |s|
  s.name         = 'AppierFrameworkAdjustPlugin'
  s.version      = package['version'][1..-1]
  s.summary      = 'Appier Adjust Plugin for iOS'
  s.description  = 'Adjust MMP integration plugin for Appier SDK'
  s.homepage     = 'https://github.com/appier/appier-ios-framework-adjust-plugin'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Appier Inc.' => 'shiv.raj@appier.com' }
  s.source       = { :git => 'https://github.com/appier/appier-ios-framework-adjust-plugin.git', :tag => s.version.to_s }

  s.platform     = :ios, '12.0'
  s.swift_version = '5.7'

  s.vendored_frameworks = 'AppierAdjustPlugin.xcframework'

  s.frameworks = 'AdSupport', 'AppTrackingTransparency', 'StoreKit', 'AdServices'

  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  s.dependency 'AppierFramework', '>= 8.7.0', '< 9.0.0'
  s.dependency 'Adjust', '~> 5.6'
end
