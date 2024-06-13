import Foundation

public final class RemoteRankDataSourceImpl: BaseRemoteDataSource<RankAPI>, RemoteRankDataSource {
    public func fetchRankInfo() async throws -> [RankInfoEntity] {
        try await request(.rank, dto: RankInfoResponseDTO.self)
            .toDomain()
    }
}
