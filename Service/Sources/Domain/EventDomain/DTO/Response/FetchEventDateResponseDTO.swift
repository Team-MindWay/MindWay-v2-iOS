import Foundation

public struct FetchEventDateResponseDTO: Decodable {
    public let event: [EventInfoDateResponseDTO]
    
    public init(
        event: [EventInfoDateResponseDTO]
    ) {
        self.event = event
    }
}

public struct EventInfoDateResponseDTO: Decodable {
    public let id: UUID
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

extension FetchEventDateResponseDTO {
    func toDomain() -> [EventInfoDateEntity] {
        event.map { $0.toDomain() }
    }
}

extension EventInfoDateResponseDTO {
    func toDomain() -> EventInfoDateEntity {
        EventInfoDateEntity(
            id: id,
            title: title,
            content: content,
            img_url: img_url,
            creted_at: creted_at,
            ended_at: ended_at)
    }
}
