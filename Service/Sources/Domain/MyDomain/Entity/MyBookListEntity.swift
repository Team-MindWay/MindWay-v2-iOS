import Foundation

public struct MyBookListEntity: Equatable {
    public let id: Int
    public let title: String
    public let author: String
    public let book_url: String

    public init(
        id: Int,
        title: String,
        author: String,
        book_url: String
    ) {
        self.id = id
        self.title = title
        self.author = author
        self.book_url = book_url
    }
}
