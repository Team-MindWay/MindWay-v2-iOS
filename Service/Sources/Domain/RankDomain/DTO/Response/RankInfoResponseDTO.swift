import Foundation

public struct RankInfoResponseDTO: Decodable {
    public let username: String
    public let accrue: Int

    public init(
        username: String,
        accrue: Int
    ) {
        self.username = username
        self.accrue = accrue
    }
}

extension RankInfoResponseDTO {
    func toDomain() -> RankInfoEntity {
        RankInfoEntity(
            username: username,
            accrue: accrue
        )
    }
}
