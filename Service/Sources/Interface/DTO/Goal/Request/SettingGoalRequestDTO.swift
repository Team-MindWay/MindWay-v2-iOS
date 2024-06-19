import Foundation

public struct SettingGoalRequestDTO: Encodable {
    public let goal_count: Int

    public init(
        goal_count: Int
    ) {
        self.goal_count = goal_count
    }
}
