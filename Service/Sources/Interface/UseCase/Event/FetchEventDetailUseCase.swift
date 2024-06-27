import Foundation

public protocol FetchEventDetailUseCase {
    func execute(eventID: String) async throws -> EventDetailEntity
}

