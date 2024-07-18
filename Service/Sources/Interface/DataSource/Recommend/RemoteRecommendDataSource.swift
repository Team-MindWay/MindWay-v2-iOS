import Foundation

public protocol RemoteRecommendDataSource {
    func fetchRecommend(params: RecommendEnum) async throws -> RecommendBookEntity
}
