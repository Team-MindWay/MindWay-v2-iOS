import Foundation

public protocol RecommendRepository {
    func fetchRecommend(params: String) async throws -> RecommendBookEntity
}
