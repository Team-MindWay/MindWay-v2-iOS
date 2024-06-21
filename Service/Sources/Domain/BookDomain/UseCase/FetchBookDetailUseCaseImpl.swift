import Foundation

public struct FetchBookDetailUseCaseImpl: FetchBookDetailUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute(book_id: Int) async throws -> BookDetailInfoEntity {
        try await bookRepository.fetchBookDetail(book_id: book_id)
    }
}
