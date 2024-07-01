import Foundation

public protocol RemoteRecommendDataSource {
    func fetchRecommend(params: String) async throws -> RecommendBookEntity
}
