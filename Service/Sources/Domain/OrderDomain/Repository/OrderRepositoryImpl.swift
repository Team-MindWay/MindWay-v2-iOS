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
    
    public func deleteOrder(OrderID: String) async throws {
        try await remoteOrderDataSource.deleteOrder(OrderID: OrderID)
    }
    
    public func updateOrder(OrderID: String, req: UpdateBookRequestDTO) async throws {
        try await remoteOrderDataSource.updateOrder(OrderID: OrderID, req: req)
    }
}
