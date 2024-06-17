import Foundation

public protocol UpdateOrderUseCase {
    func execute(OrderID: String, req: UpdateBookRequestDTO) async throws
}
