import NeedleFoundation
import Service

public extension AppComponent {
    var remoteRankDataSource: any RemoteRankDataSource {
        shared {
            RemoteRankDataSourceImpl(keychain: keychain)
        }
    }

    var rankRepository: any RankRepository {
        shared {
            RankRepositoryImpl(remoteRankDataSource: remoteRankDataSource)
        }
    }

    var fetchRankInfoUseCase: any FetchRankInfoUseCase {
        shared {
            FetchRankInfoUseCaseImpl(rankRepository: rankRepository)
        }
    }
}
