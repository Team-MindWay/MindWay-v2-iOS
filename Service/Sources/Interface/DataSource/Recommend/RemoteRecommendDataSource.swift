import Foundation

public protocol RemoteRecommendDataSource {
    func fetchRecommend() async throws -> [RecommendBookEntity]
}
