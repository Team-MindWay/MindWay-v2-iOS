import Foundation

public struct FetchBookDetailUseCaseImpl: FetchBookDetailUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute() async throws -> BookDetailInfoEntity {
        try await bookRepository.fetchBookDetail()
    }
}
