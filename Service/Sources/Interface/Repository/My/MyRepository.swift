import Foundation

public protocol MyRepository {
    func fetchMyInfo() async throws -> MyInfoEntity
    func fetchMyBookList() async throws -> MyBookListEntity
}
