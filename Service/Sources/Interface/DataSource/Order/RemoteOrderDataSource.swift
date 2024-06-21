import Foundation

public protocol RemoteOrderDataSource {
    func orderBook(req: OrderBookRequestDTO) async throws
    func updateOrder(orderID: String, req: UpdateBookRequestDTO) async throws
    func deleteOrder(orderID: String) async throws
}
