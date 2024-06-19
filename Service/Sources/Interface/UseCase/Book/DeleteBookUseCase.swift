import Foundation

public protocol DeleteBookUseCase {
    func execute(book_id: Int) async throws
}
