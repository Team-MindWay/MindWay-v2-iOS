import Foundation

public struct EventInfoEntity: Equatable {
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
