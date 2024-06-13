import Foundation

public struct FetchRankInfoUseCaseImpl: FetchRankInfoUseCase {
    private let rankRepository: any RankRepository

    public init(rankRepository: any RankRepository) {
        self.rankRepository = rankRepository
    }

    public func execute() async throws -> [RankInfoEntity] {
        try await rankRepository.fetchRankInfo()
    }
}
