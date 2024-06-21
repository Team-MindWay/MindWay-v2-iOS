import Foundation

public struct ModifyBookUseCaseImpl: ModifyBookUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute(book_id: Int, req: BookInfoRequestDTO) async throws {
        try await bookRepository.modifyBook(book_id: book_id, req: req)
    }
}
