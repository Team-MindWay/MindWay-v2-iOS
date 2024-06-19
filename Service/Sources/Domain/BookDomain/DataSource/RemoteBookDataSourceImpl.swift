import Foundation

public final class RemoteBookDataSourceImpl: BaseRemoteDataSource<BookAPI>, RemoteBookDataSource {
    public func writeBook(req: BookInfoRequestDTO) async throws {
        try await request(.writeBook(req: req))
    }
    
    public func fetchBookList() async throws -> [BookInfoEntity] {
        try await request(.bookList, dto: FetchBookInfoResponseDTO.self)
            .toDomain()
    }
    
    public func modifyBook(book_id: Int, req: BookInfoRequestDTO) async throws {
        try await request(.modifyBook(book_id: book_id, req: req))
    }
    
    public func deleteBook(book_id: Int) async throws {
        try await request(.deleteBook(book_id: book_id))
    }
    
    public func fetchBookDetail(book_id: Int) async throws -> BookDetailInfoEntity {
        try await request(.bookDetail(book_id: book_id), dto: FetchBookDetailInfoResponseDTO.self)
            .toDomain()
    }
}
