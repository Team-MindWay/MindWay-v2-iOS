import NeedleFoundation
import Service

public extension AppComponent {
    var remoteBookDataSource: any RemoteBookDataSource {
        shared {
            RemoteBookDataSourceImpl(keychain: keychain)
        }
    }

    var bookRepository: any BookRepository {
        shared {
            BookRepositoryImpl(remoteBookDataSource: remoteBookDataSource)
        }
    }

    var writeBookUseCase: any WriteBookUseCase {
        shared {
            WriteBookUseCaseImpl(bookRepository: bookRepository)
        }
    }

    var ModifyBookUseCase: any ModifyBookUseCase {
        shared {
            ModifyBookUseCaseImpl(bookRepository: bookRepository)
        }
    }
    
    var fetchBookListUseCase: any FetchBookListUseCase {
        shared {
            FetchBookListUseCaseImpl(bookRepository: bookRepository)
        }
    }
    
    var fetchBookDetailUseCase: any FetchBookDetailUseCase {
        shared {
            FetchBookDetailUseCaseImpl(bookRepository: bookRepository)
        }
    }
    
    var deleteBookUseCase: any DeleteBookUseCase {
        shared {
            DeleteBookUseCaseImpl(bookRepository: bookRepository)
        }
    }
}
