import Foundation

public final class RemoteAuthDataSourceImpl: BaseRemoteDataSource<AuthAPI>, RemoteAuthDataSource {
    public func login(code: String) async throws -> UserSignupInfoEntity {
        try await request(.login(code: code), dto: SigninResponseDTO.self)
            .toDomain()
    }
    
    public func logout() async throws {
        try await request(.logout)
    }
    
    public func refresh() async throws {
        try await request(.reissueToken)
    }
}
