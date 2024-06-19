import Foundation

public protocol FetchEventDateUseCase {
    func execute() async throws -> [EventInfoDateEntity]
}
