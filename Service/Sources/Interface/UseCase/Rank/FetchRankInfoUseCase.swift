import Foundation

public protocol FetchRankInfoUseCase {
    func execute() async throws -> [RankInfoEntity]
}
