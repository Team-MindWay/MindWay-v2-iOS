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
    
    public func modifyBook(req: BookInfoRequestDTO) async throws {
        try await remoteBookDataSource.modifyBook(req: req)
    }
    
    public func deleteBook() async throws {
        try await remoteBookDataSource.deleteBook()
    }
    
    public func fetchBookDetail() async throws -> BookDetailInfoEntity {
        try await remoteBookDataSource.fetchBookDetail()
    }
}
