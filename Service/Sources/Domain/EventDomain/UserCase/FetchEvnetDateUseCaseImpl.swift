import Foundation

public struct FetchEvnetDateUseCaseImpl: FetchEventDateUseCase {
    private let eventRepository: any EventRepository

    public init(eventRepository: any EventRepository) {
        self.eventRepository = eventRepository
    }

    public func execute() async throws -> [EventInfoDateEntity] {
        try await eventRepository.fetchEventDate()
    }
}
