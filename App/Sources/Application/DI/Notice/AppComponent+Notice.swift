import NeedleFoundation
import Service

public extension AppComponent {
    var remoteNoticeDataSource: any RemoteNoticeDataSource {
        shared {
            RemoteNoticeDataSourceImpl(keychain: keychain)
        }
    }

    var noticeRepository: any NoticeRepository {
        shared {
            NoticeRepositoryImpl(remoteNoticeDataSource: remoteNoticeDataSource)
        }
    }

    var fetchNoticeUseCase: any FetchNoticeUseCase {
        shared {
            FetchNoticeUseCaseImpl(noticeRepository: noticeRepository)
        }
    }
}
