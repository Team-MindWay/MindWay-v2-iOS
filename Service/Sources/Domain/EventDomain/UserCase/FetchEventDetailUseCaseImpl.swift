import Foundation

public struct FetchEventDetailUseCaseImpl: FetchEventDetailUseCase {
    private let eventRepository: any EventRepository

    public init(eventRepository: any EventRepository) {
        self.eventRepository = eventRepository
    }
    
    public func execute(eventID: String) async throws -> EventDetailEntity {
        try await eventRepository.fetchEventDetail(eventID: eventID)
    }
}
