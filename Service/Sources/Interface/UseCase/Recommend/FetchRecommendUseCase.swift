import Foundation

public protocol FetchRecommendUseCase {
    func execute(params: String) async throws -> RecommendBookEntity
}

