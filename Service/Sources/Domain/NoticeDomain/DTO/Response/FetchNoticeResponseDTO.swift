import Foundation

public struct FetchNoticeResponseDTO: Decodable {
    public let title: String
    public let content: String
    
    init(
        title: String,
        content: String
    ) {
        self.title = title
        self.content = content
    }
}

extension FetchNoticeResponseDTO {
    func toDomain() -> FetchNoticeEntity {
        FetchNoticeEntity(
            title: title,
            content: content
        )
    }
}
