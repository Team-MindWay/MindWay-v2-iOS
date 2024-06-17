import Foundation

public struct WriteBookUseCaseImpl: WriteBookUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute(req: BookInfoRequestDTO) async throws {
        try await bookRepository.writeBook(req: req)
    }
}
