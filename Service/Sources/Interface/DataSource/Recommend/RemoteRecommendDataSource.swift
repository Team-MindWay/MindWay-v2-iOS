import Foundation

public protocol RemoteRecommendDataSource {
    func fetchRecommend(param: String) async throws -> [RecommendBookEntity]
}
