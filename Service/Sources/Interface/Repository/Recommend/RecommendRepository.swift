import Foundation

public protocol RecommendRepository {
    func fetchRecommend(params: RecommendEnum) async throws -> RecommendBookEntity
}
