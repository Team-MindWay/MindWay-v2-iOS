import Foundation

public protocol OrderBookUseCase {
    func execute(req: OrderBookRequestDTO) async throws
}
