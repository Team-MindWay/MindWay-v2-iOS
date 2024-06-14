import Foundation

public protocol RemoteGoalDataSource {
    func settingGoal(req: SettingGoalRequestDTO) async throws
    func fetchGoalInfo() async throws -> GoalInfoEntity
}
