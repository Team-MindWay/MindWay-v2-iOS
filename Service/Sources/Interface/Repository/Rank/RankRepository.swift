import Foundation

public protocol RankRepository {
    func fetchRankInfo() async throws -> [RankInfoEntity]
}
