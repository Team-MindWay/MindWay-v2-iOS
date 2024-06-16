import Foundation

public protocol GoalRepository {
    func settingGoal(req: SettingGoalRequestDTO) async throws
    func fetchGoalInfo() async throws -> GoalInfoEntity
}
