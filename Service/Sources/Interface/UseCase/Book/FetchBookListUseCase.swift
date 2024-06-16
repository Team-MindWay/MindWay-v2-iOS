import Foundation

public protocol FetchBookListUseCase {
    func execute() async throws -> [BookInfoEntity]
}
