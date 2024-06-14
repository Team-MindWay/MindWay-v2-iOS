import Foundation

public protocol FetchGoalUseCase {
    func execute() async throws -> GoalInfoEntity
}
