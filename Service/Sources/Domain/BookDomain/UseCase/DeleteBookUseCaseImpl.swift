import Foundation

public struct DeleteBookUseCaseImpl: DeleteBookUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute(book_id: Int) async throws {
        try await bookRepository.deleteBook(book_id: book_id)
    }
}
