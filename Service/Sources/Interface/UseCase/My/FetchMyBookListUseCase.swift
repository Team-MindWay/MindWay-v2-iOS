import Foundation

public protocol FetchMyBookListUseCase {
    func execute() async throws -> MyBookListEntity
}

