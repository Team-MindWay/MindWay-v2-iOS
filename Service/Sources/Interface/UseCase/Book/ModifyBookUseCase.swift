import Foundation

public protocol ModifyBookUseCase {
    func execute(req: BookInfoRequestDTO) async throws
}
