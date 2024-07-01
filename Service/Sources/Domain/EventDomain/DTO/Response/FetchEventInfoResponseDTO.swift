import Foundation

public struct FetchEventInfoResponseDTO: Decodable {
    public let event: [EventInfoResponseDTO]
    
    public init(
        event: [EventInfoResponseDTO]
    ) {
        self.event = event
    }
}

public struct EventInfoResponseDTO: Decodable {
    public let id: Int
    public let title: String
    public let content: String
    public let img_url: String
    public let creted_at: String
    public let ended_at: String

    public init(
        id: UUID,
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

extension FetchEventInfoResponseDTO {
    func toDomain() -> [EventInfoEntity] {
        event.map { $0.toDomain() }
    }
}

extension EventInfoResponseDTO {
    func toDomain() -> EventInfoEntity {
        EventInfoEntity(
            id: id,
            title: title,
            content: content,
            img_url: img_url,
            creted_at: creted_at,
            ended_at: ended_at)
    }
}
