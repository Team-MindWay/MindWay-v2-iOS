import Foundation

struct LocalAuthDataSourceImpl: LocalAuthDataSource {
    private let keyChain: Keychain

    init(
        keyChain: Keychain
    ) {
        self.keyChain = keyChain
    }
    
    func logout() async throws {
        keyChain.delete(type: .accessToken)
        keyChain.delete(type: .accessExpiredAt)
        keyChain.delete(type: .refreshToken)
        keyChain.delete(type: .refreshExpiredAt)
    }
}
