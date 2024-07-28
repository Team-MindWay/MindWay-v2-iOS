import Foundation

public struct FetchRecommendUseCaseImpl: FetchRecommendUseCase {
    private let recommendRepository: any RecommendBookRepository

    public init(recommendRepository: any RecommendBookRepository) {
        self.recommendRepository = recommendRepository
    }
    
    public func execute(params: RecommendEnum) async throws -> RecommendBookEntity {
        try await recommendRepository.fetchRecommend(params: params)
    }
}
