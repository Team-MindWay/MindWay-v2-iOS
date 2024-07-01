import Foundation

public struct FetchEventDetailResponseDTO: Decodable {
    public let id: Int
    public let title: String
    public let content: String
    public let img_url: String
    public let creted_at: String
    public let ended_at: String

    public init(
        id: Int,
        title: String,
        content: String,
        img_url: String,
        creted_at: String,
        ended_at: String
    ) {
        self.id = id
        self.title = title
        self.content = content
        self.img_url = img_url
        self.creted_at = creted_at
        self.ended_at = ended_at
    }
}

extension FetchEventDetailResponseDTO {
    func toDomain() -> EventDetailEntity {
        EventDetailEntity(
            id: id,
            title: title,
            content: content,
            img_url: img_url,
            creted_at: creted_at,
            ended_at: ended_at
            )
    }
}
