platform :ios, '12.0'
use_frameworks!
inhibit_all_warnings!

target 'IAdvizeConversationSDK' do
    project 'IAdvizeConversationSDK'

    pod 'SwiftLint'
end

target 'IAdvizeConversationSDKTests' do
    project 'IAdvizeConversationSDK'

    pod 'Quick'
    pod 'Nimble'
    pod 'Mockingjay'
end

target 'SDKDemo' do
    project 'IAdvizeConversationSDK'

    pod 'SwiftLint'
    pod 'Firebase/AnalyticsWithoutAdIdSupport'
    pod 'KeychainSwift'
end

target 'SDKDemoOlderiOSVersions' do
    project 'IAdvizeConversationSDK'

    pod 'SwiftLint'
end

target 'SDKDemo Objective-C' do
    project 'IAdvizeConversationSDK'

    pod 'SwiftLint'
end

post_install do |installer|
    # Fix compilation warning:
    #
    # "The iOS Simulator deployment target 'IPHONEOS_DEPLOYMENT_TARGET' is set to 9.0, but the range of supported
    # deployment target versions is 16.0 to 16.X.XX."
    #
    # This warning occurs for all pods declaring a minimum platform version of iOS 9.0, because Xcode 14.0 dropped
    # support for iOS 10. As of today, the issue is still being investigated by Cocoapods:
    # https://github.com/CocoaPods/CocoaPods/issues/9884
    puts '🔧 Fix compilation warnings when building with Xcode 12'
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '8.0' || 
               config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '9.0' || 
               config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '10.0'
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
            end
        end
    end

    # Add the "BOULANGER" flag to the SDK target.
    app_project = Xcodeproj::Project.open(Dir.glob("*.xcodeproj")[0])
        app_project.native_targets.each do |target|
        if target.name == 'IAdvizeConversationSDK'
            target.build_configurations.each do |config|
                if config.name != 'Release'
                    puts "Set default flags '$(inherited) SDKDEMO' flag to #{target} - #{config}"
                    config.build_settings['SWIFT_ACTIVE_COMPILATION_CONDITIONS'] = '$(inherited) SDKDEMO'
                else
                    puts "Set default flags '$(inherited)' flag to #{target} - #{config}"
                    config.build_settings['SWIFT_ACTIVE_COMPILATION_CONDITIONS'] = '$(inherited)'
                end
                app_project.save
            end
        end
    end
end
