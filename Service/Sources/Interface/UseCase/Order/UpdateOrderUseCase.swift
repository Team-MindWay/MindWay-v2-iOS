import Foundation

public protocol UpdateOrderedBookUseCase {
    func execute(OrderID: String, req: UpdateBookRequestDTO) async throws
}
