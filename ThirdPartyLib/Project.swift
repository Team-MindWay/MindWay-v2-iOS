import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.dynamicFramwork(
    name: "ThirdPartyLib",
    packages: [],
    deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
    dependencies: [
        .SPM.Moya
    ]
)
