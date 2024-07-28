import Foundation

public protocol RemoteAuthDataSource {
    func login(code: String) async throws
    func logout() async throws
    func refresh() async throws
}
