import Foundation

public protocol AuthRepository {
    func login(code: String) async throws -> UserSignupInfoEntity
    func logout() async throws
    func refresh() async throws
}
