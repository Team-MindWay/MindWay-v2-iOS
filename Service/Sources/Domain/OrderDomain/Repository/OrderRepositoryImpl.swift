import Foundation

public struct OrderRepositoryImpl: OrderRepository {
    private let remoteOrderDataSource: RemoteOrderDataSource
    
    init(
        remoteOrderDataSource: RemoteOrderDataSource
    ) {
        self.remoteOrderDataSource = remoteOrderDataSource
    }
    
    public func orderBook(req: OrderBookRequestDTO) async throws {
        try await remoteOrderDataSource.orderBook(req: req)
    }
    
    public func deleteOrder(orderID: String) async throws {
        try await remoteOrderDataSource.deleteOrder(orderID: orderID)
    }
    
    public func updateOrder(orderID: String, req: UpdateBookRequestDTO) async throws {
        try await remoteOrderDataSource.updateOrder(orderID: orderID, req: req)
    }
}
