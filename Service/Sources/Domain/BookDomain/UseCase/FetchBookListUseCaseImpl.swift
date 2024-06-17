import Foundation

public struct FetchBookListUseCaseImpl: FetchBookListUseCase {
    private let bookRepository: any BookRepository

    public init(bookRepository: any BookRepository) {
        self.bookRepository = bookRepository
    }
    
    public func execute() async throws -> [BookInfoEntity]{
        try await bookRepository.fetchBookList()
    }
}
