import Foundation

public struct LocalAuthDataSourceImpl: LocalAuthDataSource {
    private let keychain: Keychain

    public init(
        keychain: Keychain
    ) {
        self.keychain = keychain
    }
    
    public func logout() async throws {
        keychain.delete(type: .accessToken)
        keychain.delete(type: .accessExpiredAt)
        keychain.delete(type: .refreshToken)
        keychain.delete(type: .refreshExpiredAt)
    }
}
