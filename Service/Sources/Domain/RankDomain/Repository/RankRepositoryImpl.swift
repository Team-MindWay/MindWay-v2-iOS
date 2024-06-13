import Foundation

public struct RankRepositoryImpl: RankRepository {
    private let remoteRankDataSource: any RemoteRankDataSource

    public init(
        remoteRankDataSource: any RemoteRankDataSource
    ) {
        self.remoteRankDataSource = remoteRankDataSource
    }
    
    public func fetchRankInfo() async throws -> [RankInfoEntity] {
        try await remoteRankDataSource.fetchRankInfo()
    }
}
