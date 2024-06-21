import Foundation

public protocol DeleteOrderUseCase {
    func execute(orderID: String) async throws
}
