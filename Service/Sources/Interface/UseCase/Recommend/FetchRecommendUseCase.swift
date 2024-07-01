import Foundation

public protocol FetchRecommendUseCase {
    func execute() async throws -> RecommendBookEntity
}

