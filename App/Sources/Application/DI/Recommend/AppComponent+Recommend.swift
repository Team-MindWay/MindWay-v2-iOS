import NeedleFoundation
import Service

public extension AppComponent {
    var remoteRecommendDataSource: any RemoteRecommendDataSource {
        shared {
            RemoteRecommendDataSourceImpl(keychain: keychain)
        }
    }

    var recommendRepository: any RecommendBookRepository {
        shared {
            RecommendBookRepositoryImpl(remoteRecommendDataSource: remoteRecommendDataSource)
        }
    }

    var fetchRecommendUseCase: any FetchRecommendUseCase {
        shared {
            FetchRecommendUseCaseImpl(recommendRepository: recommendRepository)
        }
    }
}
