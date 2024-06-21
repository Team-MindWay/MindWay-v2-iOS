import Foundation

public struct NoticeRepositoryImpl: NoticeRepository {
    private let remoteNoticeDataSource: any RemoteNoticeDataSource
    
    public init(
        remoteNoticeDataSource: any RemoteNoticeDataSource
    ) {
        self.remoteNoticeDataSource = remoteNoticeDataSource
    }
    
    public func fetchNotice() async throws -> FetchNoticeEntity {
        try await remoteNoticeDataSource.fetchNotice()
    }
}
