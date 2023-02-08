// swift-tools-version:5.3
import PackageDescription

let package = Package(name: "iAdvize",
                      platforms: [
                          .iOS("12.0")
                      ],
                      products: [
                          .library(name: "IAdvizeConversationSDK",
                                   targets: [
                                       "IAdvizeConversationSDK",
                                       "TwilioVideo"
                                   ])
                      ],
                      targets: [
                          .binaryTarget(name: "IAdvizeConversationSDK",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.7/IAdvizeConversationSDK.xcframework.zip",
                                        checksum: "925574f40fbf934fd57c1e1bd45373d81529c7f212c97f73bc957bd2e170f974"),
                          .binaryTarget(name: "TwilioVideo",
                                        url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.3/TwilioVideo.xcframework.zip",
                                        checksum: "1020e84ec9689a04263ff7d32228f92534b1be8a3ec72b7b6fd63717712d2f4a")
                      ])
