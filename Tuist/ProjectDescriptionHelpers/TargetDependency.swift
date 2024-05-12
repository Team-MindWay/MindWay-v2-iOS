import ProjectDescription

extension TargetDependency {
    public struct SPM {}
}

public extension TargetDependency.SPM {
    static let Moya = TargetDependency.external(name: "Moya")
    static let GAuthSignin = TargetDependency.external(name: "GAuthSignin")
}

public extension Package {}
