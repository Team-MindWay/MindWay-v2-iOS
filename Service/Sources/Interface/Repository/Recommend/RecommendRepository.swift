import Foundation

public protocol RecommendRepository {
    func fetchRecommend(param: String) async throws -> [RecommendBookEntity]
}
