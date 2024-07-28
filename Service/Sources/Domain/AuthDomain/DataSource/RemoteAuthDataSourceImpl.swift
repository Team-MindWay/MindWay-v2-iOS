import Foundation

public final class RemoteAuthDataSourceImpl: BaseRemoteDataSource<AuthAPI>, RemoteAuthDataSource {
    public let keychain: Keychain

    public init(keychain: any Keychain) {
        self.keychain = keychain
        super.init(keychain: keychain)
    }
    
    public func login(code: String) async throws {
        try await request(.login(code: code))
    }
    
    public func logout() async throws {
        try await request(.logout)
    }
    
    public func refresh() async throws {
        try await request(.reissueToken)
    }
}
