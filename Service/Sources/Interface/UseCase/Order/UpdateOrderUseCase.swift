import Foundation

public protocol UpdateOrderUseCase {
    func execute(orderID: String, req: UpdateBookRequestDTO) async throws
}
