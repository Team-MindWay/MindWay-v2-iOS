import NeedleFoundation
import Service

public extension AppComponent {
    var remoteEventDataSource: any RemoteEventDataSource {
        shared {
            RemoteEventDataSourceImpl(keychain: keychain)
        }
    }

    var eventRepository: any EventRepository {
        shared {
            EventRepositoryImpl(remoteEventDataSource: remoteEventDataSource)
        }
    }

    var fetchEventInfoUseCase: any FetchEventInfoUseCase {
        shared {
            FetchEventInfoUseCaseImpl(eventRepository: eventRepository)
        }
    }

    var fetchEventDetailUseCase: any FetchEventDetailUseCase {
        shared {
            FetchEventDetailUseCaseImpl(eventRepository: eventRepository)
        }
    }
}
