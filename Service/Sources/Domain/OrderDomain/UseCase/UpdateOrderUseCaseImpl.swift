import Foundation

public struct UpdateOrderUseCaseImpl: UpdateOrderUseCase {
    private let orderRepository: any OrderRepository
    
    init(
        orderRepository: any OrderRepository
    ) {
        self.orderRepository = orderRepository
    }
    
    public func execute(orderID: String, req: UpdateBookRequestDTO) async throws {
        try await orderRepository.updateOrder(orderID: orderID, req: req)
    }
}
