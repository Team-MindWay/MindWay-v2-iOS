import Foundation

public final class RemoteOrderDataSourceImpl: BaseRemoteDataSource<OrderAPI>, RemoteOrderDataSource {
    public func orderBook(req: OrderBookRequestDTO) async throws {
        try await request(.orderBook(req: req))
    }
    
    public func updateOrder(orderID: String, req: UpdateBookRequestDTO) async throws {
        try await request(.updateOrder(orderID: orderID, req: req))
    }
    
    public func deleteOrder(orderID: String) async throws {
        try await request(.deleteOrder(orderID: orderID))
    }
}
