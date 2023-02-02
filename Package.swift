// swift-tools-version:5.3

import PackageDescription

let package = Package(name: "IAdvizeConversationSDK",
                      platforms: [
                          .iOS("12.0")
                      ],
                      products: [
                          .library(name: "IAdvizeConversationSDK",
                                   targets: ["IAdvizeConversationSDK",
                                             "iAdvizeApollo",
                                             "iAdvizeJWTDecode",
                                             "iAdvizeSwiftGraylog",
                                             "iAdvizeSwiftyMarkdown",
                                             "TwilioVideo"])
                      ],
                      targets: [
                          .binaryTarget(name: "IAdvizeConversationSDK",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/IAdvizeConversationSDK.xcframework.zip",
                                        checksum: "bf487459f0fac3f9226fe6a7dbadf5b083fb68cd3e74beeeebdec9bb34cdc4bd"),
                          .binaryTarget(name: "iAdvizeApollo",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/iAdvizeApollo.xcframework.zip",
                                        checksum: "21f8535c2ca84a11ad0f24b2e923e5248ced297133123fbd1a52144678dc8f33"),
                          .binaryTarget(name: "iAdvizeJWTDecode",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/iAdvizeJWTDecode.xcframework.zip",
                                        checksum: "5513a28b193975201d3ef5ecbeae3c9a6c1cd58502da30ee054fa6826fda773e"),
                          .binaryTarget(name: "iAdvizeSwiftGraylog",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/iAdvizeSwiftGraylog.xcframework.zip",
                                        checksum: "6af20d0d517060acc174c71f7338420da5d0797f71dbff56ace1a09522a44b87"),
                          .binaryTarget(name: "iAdvizeSwiftyMarkdown",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/iAdvizeSwiftyMarkdown.xcframework.zip",
                                        checksum: "dfe19b94a9cb4ec3ab1284a9a6396d17de65beef6fc81e80a5b994571d3720fc"),
                          .binaryTarget(name: "TwilioVideo",
                                        url: "https://github.com/iadvize/iadvize-ios-sdk-spm/releases/download/2.8.4/TwilioVideo.xcframework.zip",
                                        checksum: "0bdfe10769c0766654d9d5b229e4d3e5268bf95d4191632b17f5ba1f33da96ed")
                      ])
