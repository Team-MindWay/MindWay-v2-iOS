import NeedleFoundation
import Service
import SwiftUI

public protocol LoginDependency: Dependency {
    var loginUseCase: any LoginUseCase { get }
    var signinFactory: any SigninFactory { get }
}

public final class SigninComponent: Component<LoginDependency>, SigninFactory {
    public func makeView() -> some View {
        SigninView(
            viewModel: .init(
                loginUseCase: dependency.loginUseCase
            ),
            signinFactory: dependency.signinFactory
        )
    }
}
