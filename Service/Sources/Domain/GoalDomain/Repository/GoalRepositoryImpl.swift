import Foundation

public struct GoalRepositoryImpl: GoalRepository {
    private let remoteGoalDataSource: any RemoteGoalDataSource

    public init(
        remoteGoalDataSource: any RemoteGoalDataSource
    ) {
        self.remoteGoalDataSource = remoteGoalDataSource
    }
    
    public func settingGoal(req: SettingGoalRequestDTO) async throws {
        try await remoteGoalDataSource.settingGoal(req: req)
    }
    
    public func fetchGoalInfo() async throws -> GoalInfoEntity {
        try await remoteGoalDataSource.fetchGoalInfo()
    }
}
