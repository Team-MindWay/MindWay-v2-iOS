import Foundation

public struct FetchBookDetailInfoResponseDTO: Decodable {
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

extension FetchBookDetailInfoResponseDTO {
    func toDomain() -> BookDetailInfoEntity {
        BookDetailInfoEntity(
            title: title,
            plot: plot
        )
    }
}
