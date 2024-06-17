import Foundation

public protocol RemoteBookDataSource {
    func writeBook(req: BookInfoRequestDTO) async throws
    func fetchBookList() async throws -> [BookInfoEntity]
    func modifyBook(book_id: Int, req: BookInfoRequestDTO) async throws
    func deleteBook(book_id: Int) async throws
    func fetchBookDetail(book_id: Int) async throws -> BookDetailInfoEntity
}
