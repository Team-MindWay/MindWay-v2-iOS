import Foundation

public struct FetchNoticeUseCaseImpl: FetchNoticeUseCase {
    private let noticeRepository: any NoticeRepository
    
    public init(
        noticeRepository: any NoticeRepository
    ) {
        self.noticeRepository = noticeRepository
    }
    
    public func execute() async throws -> FetchNoticeEntity {
        try await noticeRepository.fetchNotice()
    }
}
