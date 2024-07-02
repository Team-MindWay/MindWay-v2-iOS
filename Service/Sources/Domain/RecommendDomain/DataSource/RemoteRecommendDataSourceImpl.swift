import Foundation

public final class RemoteRecommendDataSourceImpl: BaseRemoteDataSource<RecommendAPI>, RemoteRecommendDataSource {
    public func fetchRecommend(params: String) async throws -> RecommendBookEntity {
        try await request(.fetchRecommendBook(params: params), dto: FetchRecommendBookResponseDTO.self)
            .toDomain()
    }
}
