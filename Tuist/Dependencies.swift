import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(
                url: "https://github.com/Moya/Moya.git",
                requirement: .upToNextMajor(from: "15.0.3")
            ),
            .remote(
                url: "https://github.com/Team-MindWay/GAuthSignin-Swift.git",
                requirement: .branch("master")
            ),
            .remote(
                url: "https://github.com/uber/needle.git",
                requirement: .upToNextMajor(from: "0.24.0")
            )
        ],
        productTypes: [
            "GAuthSignin": .framework
        ],
        baseSettings: .settings(
            configurations: [
                .debug(name: .debug),
                .release(name: .release)
            ]
        )
    ),
    platforms: [.iOS]
)
