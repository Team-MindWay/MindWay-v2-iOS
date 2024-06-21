import Foundation

public struct FetchNoticeEntity {
    private let title: String
    private let content: String
    
    init(
        title: String,
        content: String
    ) {
        self.title = title
        self.content = content
    }
}
