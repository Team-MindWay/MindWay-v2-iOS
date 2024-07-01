import Foundation

public struct FetchRecommendUseCaseImpl: FetchRecommendUseCase {
    private let recommendRepository: any RecommendRepository

    public init(recommendRepository: any RecommendRepository) {
        self.recommendRepository = recommendRepository
    }
    
    public func execute(params: String) async throws -> RecommendBookEntity {
        try await recommendRepository.fetchRecommend(params: params)
    }
}
