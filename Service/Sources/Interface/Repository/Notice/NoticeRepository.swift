import Foundation

public protocol NoticeRepository {
    func fetchNotice() async throws -> FetchNoticeEntity
}
