import NeedleFoundation
import Service

public extension AppComponent {
    var remoteMyDataSource: any RemoteMyDataSource {
        shared {
            RemoteMyDataSourceImpl(keychain: keychain)
        }
    }
    
    var myRepository: any MyRepository {
        shared {
            MyRepositoryImpl(remoteMyDataSource: remoteMyDataSource)
        }
    }
    
    var fetchMyInfoUseCase: any FetchMyInfoUseCase {
        shared {
            FetchMyInfoUseCaseImpl(myRepository: myRepository)
        }
    }
    
    var fetchMyBookListUseCase: any FetchMyBookListUseCase {
        shared {
            FetchMyBookListUseCaseImpl(myRepository: myRepository)
        }
    }
}
