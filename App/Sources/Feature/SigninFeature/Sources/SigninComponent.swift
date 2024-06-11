import NeedleFoundation
import Service
import SwiftUI

public protocol SigninDependency: Dependency {
    var loginUseCase: any LoginUseCase { get }
    var signinFactory: any SigninFactory { get }
}

public final class SigninComponent: Component<SigninDependency>, SigninFactory {
    public func makeView() -> some View {
        SigninView(
            viewModel: .init(
                loginUseCase: dependency.loginUseCase
            ),
            signinFactory: dependency.signinFactory
        )
    }
}
