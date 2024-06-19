import Foundation

public struct BookInfoRequestDTO: Encodable {
    public let title: String
    public let plot: String

    public init(
        title: String,
        plot: String
    ) {
        self.title = title
        self.plot = plot
    }
}
