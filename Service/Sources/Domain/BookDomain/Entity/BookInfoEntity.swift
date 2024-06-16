import Foundation

public struct BookInfoEntity: Equatable {
    public let id: Int
    public let title: String
    public let plot: String
    public let created_at: String

    public init(
        id: Int,
        title: String,
        plot: String,
        created_at: String

    ) {
        self.id = id
        self.title = title
        self.plot = plot
        self.created_at = created_at
    }
}
