import Foundation

public protocol GoalRepository {
    func settingGoal() async throws
    func fetchGoalInfo() async throws -> GoalInfoEntity
}
