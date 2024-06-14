import Foundation

public struct GoalRepositoryImpl: GoalRepository {
    private let remoteGoalDataSource: any RemoteGoalDataSource

    public init(
        remoteGoalDataSource: any RemoteGoalDataSource
    ) {
        self.remoteGoalDataSource = remoteGoalDataSource
    }
    
    public func settingGoal() async throws {
        try await remoteGoalDataSource.settingGoal()
    }
    
    public func fetchGoalInfo() async throws -> GoalInfoEntity {
        try await remoteGoalDataSource.fetchGoalInfo()
    }
}
