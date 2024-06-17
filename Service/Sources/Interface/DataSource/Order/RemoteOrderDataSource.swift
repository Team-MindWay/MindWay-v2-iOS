import Foundation

public protocol RemoteOrderDataSource {
    func orderBook(req: OrderBookRequestDTO) async throws
    func updateOrder(OrderID: String, req: UpdateBookRequestDTO) async throws
    func deleteOrder(OrderID: String) async throws
}
