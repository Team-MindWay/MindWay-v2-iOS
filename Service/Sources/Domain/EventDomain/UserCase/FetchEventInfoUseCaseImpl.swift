import Foundation

public struct FetchEventInfoUseCaseImpl: FetchEventInfoUseCase {
    private let eventRepository: any EventRepository

    public init(eventRepository: any EventRepository) {
        self.eventRepository = eventRepository
    }

    public func execute() async throws -> [EventInfoEntity] {
        try await eventRepository.fetchEventInfo()
    }
}
