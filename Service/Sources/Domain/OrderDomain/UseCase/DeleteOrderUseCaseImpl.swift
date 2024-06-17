import Foundation

public struct DeleteOrderUseCaseImpl: DeleteOrderkUseCase {
    private let orderRepository: any OrderRepository
    
    init(
        orderRepository: any OrderRepository
    ) {
        self.orderRepository = orderRepository
    }
    
    public func execute(OrderID: String) async throws {
        try await orderRepository.deleteOrder(OrderID: OrderID)
    }
}
