import Foundation

public protocol OrderRepository {
    func orderBook(req: OrderBookRequestDTO) async throws
    func updateOrder(orderID: String, req: UpdateBookRequestDTO) async throws
    func deleteOrder(orderID: String) async throws
}
