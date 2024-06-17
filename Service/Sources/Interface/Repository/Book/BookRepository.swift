import Foundation

public protocol BookRepository {
    func writeBook(req: WriteBookRequestDTO) async throws
    func fetchBookList() async throws -> [BookInfoEntity]
    func modifyBook(req: BookDetialInfoEntity) async throws
    func deleteBook() async throws
    func fetchBookDetail() async throws -> BookDetialInfoEntity
}
