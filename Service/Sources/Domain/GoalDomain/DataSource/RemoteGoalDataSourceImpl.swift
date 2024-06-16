import Foundation

public final class RemoteGoalDataSourceImpl: BaseRemoteDataSource<GoalAPI>, RemoteGoalDataSource {
    public func settingGoal(req: SettingGoalRequestDTO) async throws {
        try await request(.settingGoal(req))
    }
    
    public func fetchGoalInfo() async throws -> GoalInfoEntity {
        try await request(.fetchGoal, dto: FetchGoalInfoResponseDTO.self)
            .toDomain()
    }
}
