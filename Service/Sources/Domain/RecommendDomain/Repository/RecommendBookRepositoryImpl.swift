import Foundation

public struct RecommendBookRepositoryImpl: RecommendRepository {
    private let remoteRecommendDataSource: any RemoteRecommendDataSource

    public init(
        remoteRecommendDataSource: any RemoteRecommendDataSource
    ) {
        self.remoteRecommendDataSource = remoteRecommendDataSource
    }
    
    public func fetchRecommend(param: String) async throws -> [RecommendBookEntity] {
        try await remoteRecommendDataSource.fetchRecommend(param: param)
    }
}

