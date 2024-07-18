import Foundation

public struct RecommendBookRepositoryImpl: RecommendRepository {
    private let remoteRecommendDataSource: any RemoteRecommendDataSource

    public init(
        remoteRecommendDataSource: any RemoteRecommendDataSource
    ) {
        self.remoteRecommendDataSource = remoteRecommendDataSource
    }
    
    public func fetchRecommend(params: RecommendEnum) async throws -> RecommendBookEntity {
        try await remoteRecommendDataSource.fetchRecommend(params: params)
    }
}

