import Foundation

public struct BookRepositoryImpl: BookRepository {
    private let remoteBookDataSource: any RemoteBookDataSource

    public init(
        remoteBookDataSource: any RemoteBookDataSource
    ) {
        self.remoteBookDataSource = remoteBookDataSource
    }
    
    public func writeBook(req: BookInfoRequestDTO) async throws {
        try await remoteBookDataSource.writeBook(req: req)
    }
    
    public func fetchBookList() async throws -> [BookInfoEntity] {
        try await remoteBookDataSource.fetchBookList()
    }
    
    public func modifyBook(book_id: Int, req: BookInfoRequestDTO) async throws {
        try await remoteBookDataSource.modifyBook(book_id: book_id, req: req)
    }
    
    public func deleteBook(book_id: Int) async throws {
        try await remoteBookDataSource.deleteBook(book_id: book_id)
    }
    
    public func fetchBookDetail(book_id: Int) async throws -> BookDetailInfoEntity {
        try await remoteBookDataSource.fetchBookDetail(book_id: book_id)
    }
}
