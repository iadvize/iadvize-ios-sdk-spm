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
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.5/IAdvizeSDK.zip",
                                        checksum: "ebd2ab804f8d13c26c6a85ab0d412e5bfc85a385a5dcbe7c348acfbda67814f3"),
                          .binaryTarget(name: "TwilioVideo",
                                        url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.3/TwilioVideo.xcframework.zip",
                                        checksum: "1020e84ec9689a04263ff7d32228f92534b1be8a3ec72b7b6fd63717712d2f4a")
                      ])
