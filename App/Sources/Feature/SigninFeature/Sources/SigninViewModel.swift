import Foundation
import Service

final class SigninViewModel: BaseViewModel {
    private let loginUseCase: any LoginUseCase
    
    init(
        loginUseCase: any LoginUseCase
    ) {
        self.loginUseCase = loginUseCase
    }
    
    func signin(code: String) {
        Task {
            do {
                let userSigninInfo = try await self.loginUseCase.execute(code: code)
                print("로그인 성공 \(userSigninInfo.authority)")
            } catch {
                isErrorOccurred = true
                print("로그인 실패: \(error)")
            }
        }
    }
}
