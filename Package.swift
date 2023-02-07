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
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.5/IAdvizeConversationSDK.xcframework.zip",
                                        checksum: "af2ed72f7085435d5130c13ea17d9fa19cedf8df737ba6e6ff1fee4ed69b0642"),
                          .binaryTarget(name: "TwilioVideo",
                                        url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.3/TwilioVideo.xcframework.zip",
                                        checksum: "1020e84ec9689a04263ff7d32228f92534b1be8a3ec72b7b6fd63717712d2f4a")
                      ])
