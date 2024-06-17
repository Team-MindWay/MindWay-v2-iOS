import Foundation

public final class RemoteOrderDataSourceImpl: BaseRemoteDataSource<OrderAPI>, RemoteOrderDataSource {
    public func orderBook(req: OrderBookRequestDTO) async throws {
        try await request(.orderBook(req: req))
    }
    
    public func updateOrder(OrderID: String, req: UpdateBookRequestDTO) async throws {
        try await request(.updateOrder(orderID: OrderID, req: req))
    }
    
    public func deleteOrder(OrderID: String) async throws {
        try await request(.deleteOrder(orderID: OrderID))
    }
}
