import Foundation

public protocol RemoteEventDataSource {
    func fetchEventInfo() async throws -> [EventInfoEntity]
    func fetchEventDetail(eventID: String) async throws -> EventDetailEntity
    func fetchEventDate() async throws -> [EventInfoDateEntity]
}
