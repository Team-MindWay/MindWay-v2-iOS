import Foundation

public struct FetchBookInfoResponseDTO: Decodable {
    public let book: [BookInfoResponseDTO]
    
    public init(book: [BookInfoResponseDTO]) {
        self.book = book
    }
}

public struct BookInfoResponseDTO: Decodable {
    public let id: Int
    public let title: String
    public let plot: String
    public let created_at: Date

    public init(
        id: Int,
        title: String,
        plot: String,
        created_at: Date
    ) {
        self.id = id
        self.title = title
        self.plot = plot
        self.created_at = created_at
    }
}

extension FetchBookInfoResponseDTO {
    func toDomain() -> [BookInfoEntity] {
        book.map { $0.toDomain() }
    }
}

extension BookInfoResponseDTO {
    func toDomain() -> BookInfoEntity {
        BookInfoEntity(
            id: id,
            title: title,
            plot: plot,
            created_at: created_at
        )
    }
}
