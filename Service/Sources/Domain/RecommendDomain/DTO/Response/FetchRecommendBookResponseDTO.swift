import Foundation

public struct FetchRecommendBookResponseDTO: Decodable {
    public let id: Int
    public let title: String
    public let content: String
    public let author: String

    public init(
        id: Int,
        title: String,
        content: String,
        author: String
    ) {
        self.id = id
        self.title = title
        self.content = content
        self.author = author
    }
}

extension FetchRecommendBookResponseDTO {
    func toDomain() -> RecommendBookEntity {
        RecommendBookEntity(
            id: id,
            title: title,
            content: content,
            author: author
        )
    }
}
