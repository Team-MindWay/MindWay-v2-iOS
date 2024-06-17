import Foundation

public protocol DeleteOrderUseCase {
    func execute(OrderID: String) async throws
}
