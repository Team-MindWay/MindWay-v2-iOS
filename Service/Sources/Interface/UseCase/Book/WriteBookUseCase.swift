import Foundation

public protocol WriteBookUseCase {
    func execute(req: BookInfoRequestDTO) async throws
}
