import Foundation

public protocol FetchEventDetailUseCase {
    func execute() async throws -> EventDetailEntity
}

