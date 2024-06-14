import Foundation

public struct FetchGoalUseCaseImpl: FetchGoalUseCase {
    private let goalRepository: any GoalRepository

    public init(goalRepository: any GoalRepository) {
        self.goalRepository = goalRepository
    }
    
    public func execute() async throws -> GoalInfoEntity {
        try await goalRepository.fetchGoalInfo()
    }
}
