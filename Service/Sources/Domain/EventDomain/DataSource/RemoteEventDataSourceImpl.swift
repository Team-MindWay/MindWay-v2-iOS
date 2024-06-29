import Foundation

public final class RemoteEventDataSourceImpl: BaseRemoteDataSource<EventAPI>, RemoteEventDataSource {
    public func fetchEventInfo() async throws -> [EventInfoEntity] {
        try await request(.eventList, dto: FetchEventInfoResponseDTO.self)
            .toDomain()
    }
    
    public func fetchEventDetail(eventID: String) async throws -> EventDetailEntity {
        try await request(.eventDetail(eventID: ""), dto: FetchEventDetailResponseDTO.self)
            .toDomain()
    }
}
