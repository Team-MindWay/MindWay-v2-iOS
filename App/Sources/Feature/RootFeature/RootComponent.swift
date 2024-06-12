import NeedleFoundation
import SwiftUI

public protocol RootDependency: Dependency {
    var signinFactory: any SigninFactory { get }
}

public final class RootComponent: Component<RootDependency> {
    public func makeView() -> some View {
        RootView(
            signinFactory: self.dependency.signinFactory
        )
    }
}
