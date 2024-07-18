import Foundation

public protocol FetchRecommendUseCase {
    func execute(params: RecommendEnum) async throws -> RecommendBookEntity
}

