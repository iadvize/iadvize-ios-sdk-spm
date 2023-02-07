// swift-tools-version:5.3
import PackageDescription

let package = Package(name: "IAdvizeConversationSDK",
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
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.7/IAdvizeSDK.zip",
                                        checksum: "5e9bdbe265967b95ed4136f05f423c36e5f0672bdc78b132c4a19ad7540bc95f"),
                          .binaryTarget(name: "TwilioVideo",
                                        url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.3/TwilioVideo.xcframework.zip",
                                        checksum: "1020e84ec9689a04263ff7d32228f92534b1be8a3ec72b7b6fd63717712d2f4a")
                      ])
