import Foundation

public struct OrderEntity: Equatable {
    public let title: String
    public let author: String
    public let bookUrl: String
    
    init(
        title: String,
        author: String,
        bookUrl: String
    ) {
        self.title = title
        self.author = author
        self.bookUrl = bookUrl
    }
}
