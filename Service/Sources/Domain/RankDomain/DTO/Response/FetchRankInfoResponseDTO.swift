import Foundation

public struct FetchRankInfoResponseDTO: Decodable {
    public let rank: [RankInfoResponseDTO]
    
    public init(rank: [RankInfoResponseDTO]) {
        self.rank = rank
    }
}

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

extension FetchRankInfoResponseDTO {
    func toDomain() -> [RankInfoEntity] {
        rank.map { $0.toDomain() }
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
