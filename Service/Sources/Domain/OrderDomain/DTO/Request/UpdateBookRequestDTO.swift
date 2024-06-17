import Foundation

public struct UpdateBookRequestDTO: Encodable {
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
    
    enum CodingKeys: String, CodingKey {
        case title
        case author
        case bookUrl = "book_url"
    }
}
