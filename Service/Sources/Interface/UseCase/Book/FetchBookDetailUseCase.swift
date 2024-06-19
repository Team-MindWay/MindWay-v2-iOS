import Foundation

public protocol FetchBookDetailUseCase {
    func execute(book_id: Int) async throws -> BookDetailInfoEntity
}
