import Foundation

public protocol DeleteOrderedBookUseCase {
    func execute(OrderID: String) async throws
}
