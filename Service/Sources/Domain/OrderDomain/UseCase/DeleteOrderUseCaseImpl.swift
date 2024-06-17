import Foundation

public struct DeleteOrderUseCaseImpl: DeleteOrderUseCase {
    private let orderRepository: any OrderRepository
    
    init(
        orderRepository: any OrderRepository
    ) {
        self.orderRepository = orderRepository
    }
    
    public func execute(orderID: String) async throws {
        try await orderRepository.deleteOrder(orderID: orderID)
    }
}
