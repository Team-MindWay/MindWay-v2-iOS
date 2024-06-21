import Foundation

public protocol RemoteNoticeDataSource {
    func fetchNotice() async throws -> FetchNoticeEntity
}
