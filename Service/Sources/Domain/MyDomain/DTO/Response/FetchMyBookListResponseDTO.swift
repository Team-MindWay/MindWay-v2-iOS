import Foundation

public struct FetchMyBookListResponseDTO: Decodable {
    public let id: UUID
    public let title: String
    public let author: String
    public let book_url: String

    public init(
        id: UUID,
        title: String,
        author: String,
        book_url: String
    ) {
        self.id = id
        self.title = title
        self.author = author
        self.book_url = book_url
    }
}

extension FetchMyBookListResponseDTO {
    func toDomain() -> MyBookListEntity {
        MyBookListEntity(
            id: id,
            title: title,
            author: author,
            book_url: book_url
        )
    }
}
