import Foundation

public protocol RemoteBookDataSource {
    func writeBook(req: BookInfoRequestDTO) async throws
    func fetchBookList() async throws -> [BookInfoEntity]
    func modifyBook(req: BookInfoRequestDTO) async throws
    func deleteBook() async throws
    func fetchBookDetail() async throws -> BookDetailInfoEntity
}
