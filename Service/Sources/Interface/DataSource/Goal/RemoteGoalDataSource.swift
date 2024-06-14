import Foundation

public protocol RemoteGoalDataSource {
    func settingGoal() async throws
    func fetchGoalInfo() async throws -> GoalInfoEntity
}
