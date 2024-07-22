import Foundation

public protocol RecommendBookRepository {
    func fetchRecommend(params: RecommendEnum) async throws -> RecommendBookEntity
}
