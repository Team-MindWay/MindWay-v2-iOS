import Foundation

public protocol RemoteMyDataSource {
    func fetchMyInfo() async throws -> MyInfoEntity
    func fetchMyBookList() async throws -> MyBookListEntity
}
