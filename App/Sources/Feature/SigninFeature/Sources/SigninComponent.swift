import NeedleFoundation
import Service
import SwiftUI

public protocol SigninDependency: Dependency {
    var loginUseCase: any LoginUseCase { get }
    var mainFactory: any MainFactory { get }
}

public final class SigninComponent: Component<SigninDependency>, SigninFactory {
    public func makeView() -> some View {
        SigninView(
            viewModel: .init(
                loginUseCase: dependency.loginUseCase
            ),
            mainFactory: dependency.mainFactory
        )
    }
}
