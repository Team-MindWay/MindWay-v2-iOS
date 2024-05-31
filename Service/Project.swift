import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.dynamicFramwork(
    name: "Service",
    platform: .iOS,
    deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone])
)
