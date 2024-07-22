import Foundation
import Service

final class SigninViewModel: BaseViewModel {
    private let loginUseCase: any LoginUseCase
    @Published var isSuccessSignin = false

    init(
        loginUseCase: any LoginUseCase
    ) {
        self.loginUseCase = loginUseCase
    }
    
    func signin(code: String) {
        Task {
            do {
                let userSigninInfo = try await self.loginUseCase.execute(code: code)
                print("로그인 성공")
                isSuccessSignin = true
            } catch {
                isErrorOccurred = true
                print("로그인 실패: \(error)")
            }
        }
    }
}
