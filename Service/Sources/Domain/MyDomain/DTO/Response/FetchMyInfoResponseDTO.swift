import Foundation

public struct FetchMyInfoResponseDTO: Decodable {
    public let name: String
    public let authority: String

    public init(
        name: String,
        authority: String
    ) {
        self.name = name
        self.authority = authority
    }
}

extension FetchMyInfoResponseDTO {
    func toDomain() -> MyInfoEntity {
        MyInfoEntity(
            name: name,
            authority: authority
        )
    }
}
