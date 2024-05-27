import Foundation
import Service

final class SigninViewModel: ObservableObject {
    private weak var model: (any SigninActionProtocol)?
    private let loginUseCase: any LoginUseCase
    
    init(
        model: any SigninActionProtocol,
        loginUseCase: any LoginUseCase
    ) {
        self.model = model
        self.loginUseCase = loginUseCase
    }
    
    func signin(code: String) {
        Task {
            do {
                let userSignupInfo = try await self.loginUseCase.execute(code: code)
            } catch {
                model?.updateIsError(isError: true)
            }
        }
    }
}
