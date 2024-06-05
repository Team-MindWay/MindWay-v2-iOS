import Foundation

public struct AuthRepositoryImpl: AuthRepository {
    private let remoteAuthDataSource: any RemoteAuthDataSource
    private let localAuthDataSource: any LocalAuthDataSource

    public init(
        remoteAuthDataSource: any RemoteAuthDataSource,
        localAuthDataSource: any LocalAuthDataSource
    ) {
        self.remoteAuthDataSource = remoteAuthDataSource
        self.localAuthDataSource = localAuthDataSource
    }

    public func login(code: String) async throws -> UserSignupInfoEntity {
        try await remoteAuthDataSource.login(code: code)
    }

    public func logout() async throws {
        try await remoteAuthDataSource.logout()
        try await localAuthDataSource.logout()
    }

    public func refresh() async throws {
        try await remoteAuthDataSource.refresh()
    }
}
