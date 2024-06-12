import Foundation

public struct LoginUseCaseImpl: LoginUseCase {
    private let authRepository: any AuthRepository

    public init(authRepository: any AuthRepository) {
        self.authRepository = authRepository
    }

    public func execute(code: String) async throws -> UserSignupInfoEntity {
        try await authRepository.login(code: code)
    }
}
