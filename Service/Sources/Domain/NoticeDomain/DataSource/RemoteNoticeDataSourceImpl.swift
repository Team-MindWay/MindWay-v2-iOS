import Foundation

public final class RemoteNoticeDataSourceImpl: BaseRemoteDataSource<NoticeAPI>, RemoteNoticeDataSource {
    public func fetchNotice() async throws -> FetchNoticeEntity {
        try await request(.fetchNotice, dto: FetchNoticeResponseDTO.self)
            .toDomain()
    }
}
