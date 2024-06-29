import Foundation

public struct EventRepositoryImpl: EventRepository {
    private let remoteEventDataSource: any RemoteEventDataSource

    public init(
        remoteEventDataSource: any RemoteEventDataSource
    ) {
        self.remoteEventDataSource = remoteEventDataSource
    }
    
    public func fetchEventInfo() async throws -> [EventInfoEntity] {
        try await remoteEventDataSource.fetchEventInfo()
    }
    
    public func fetchEventDetail(eventID: String) async throws -> EventDetailEntity {
        try await remoteEventDataSource.fetchEventDetail(eventID: eventID)
    }
    
    public func fetchEventDate() async throws -> [EventInfoDateEntity] {
        try await remoteEventDataSource.fetchEventDate()
    }
}
