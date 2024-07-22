import NeedleFoundation
import Service

public extension AppComponent {
    var remoteGoalDataSource: any RemoteGoalDataSource {
        shared {
            RemoteGoalDataSourceImpl(keychain: keychain)
        }
    }

    var goalRepository: any GoalRepository {
        shared {
            GoalRepositoryImpl(remoteGoalDataSource: remoteGoalDataSource)
        }
    }

    var fetchGoalUseCase: any FetchGoalUseCase {
        shared {
            FetchGoalUseCaseImpl(goalRepository: goalRepository)
        }
    }

    var settingGoalUseCase: any SettingGoalUseCase {
        shared {
            SettingGoalUseCaseImpl(goalRepository: goalRepository)
        }
    }
}
