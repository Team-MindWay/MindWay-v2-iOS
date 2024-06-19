import Foundation

public struct ModifyBookUseCaseImpl: ModifyBookUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute(req: BookInfoRequestDTO) async throws {
        try await bookRepository.modifyBook(req: req)
    }
}
