import Foundation

final class RemoteAuthDataSourceImpl: BaseRemoteDataSource<AuthAPI>, RemoteAuthDataSource {
    func login(code: String) async throws -> UserSignupInfoEntity {
        try await request(.login(code: code), dto: SigninResponseDTO.self)
            .toDomain()
    }
    
    func logout() async throws {
        try await request(.logout)
    }
    
    func refresh() async throws {
        try await request(.reissueToken)
    }
}
