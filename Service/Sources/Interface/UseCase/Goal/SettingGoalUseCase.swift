import Foundation

public protocol SettingGoalUseCase {
    func execute(req: SettingGoalRequestDTO) async throws
}
