import Foundation

public protocol ModifyBookUseCase {
    func execute(book_id: Int, req: BookInfoRequestDTO) async throws
}
