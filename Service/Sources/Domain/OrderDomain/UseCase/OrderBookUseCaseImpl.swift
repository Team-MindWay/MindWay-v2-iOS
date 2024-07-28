import Foundation

public struct OrderBookUseCaseImpl: OrderBookUseCase {
    private let orderRepository: any OrderRepository
    
    public init(
        orderRepository: any OrderRepository
    ) {
        self.orderRepository = orderRepository
    }
    
    public func execute(req: OrderBookRequestDTO) async throws {
        try await orderRepository.orderBook(req: req)
    }
}
