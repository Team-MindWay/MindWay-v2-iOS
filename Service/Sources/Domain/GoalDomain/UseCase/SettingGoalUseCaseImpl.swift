import Foundation

public struct SettingGoalUseCaseImpl: SettingGoalUseCase {
    private let goalRepository: any GoalRepository

    public init(goalRepository: any GoalRepository) {
        self.goalRepository = goalRepository
    }
    
    public func execute(req: SettingGoalRequestDTO) async throws {
        try await goalRepository.settingGoal(req: req)
    }
}

