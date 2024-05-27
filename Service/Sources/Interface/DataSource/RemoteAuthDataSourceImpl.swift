import Foundation

struct RemoteAuthDataSourceImpl: BaseRemoteDataSource<AuthAPI>, RemoteAuthDateSource {
    func login(code: String) async throws -> UserSignupInfoEntity {
        <#code#>
    }
    
    func logout() async throws {
        <#code#>
    }
    
    func refresh() async throws {
        <#code#>
    }
    
    
}
