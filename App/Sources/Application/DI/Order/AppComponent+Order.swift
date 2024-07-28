import NeedleFoundation
import Service

public extension AppComponent {
    var remoteOrderDataSource: any RemoteOrderDataSource {
        shared {
            RemoteOrderDataSourceImpl(keychain: keychain)
        }
    }

    var orderRepository: any OrderRepository {
        shared {
            OrderRepositoryImpl(remoteOrderDataSource: remoteOrderDataSource)
        }
    }

    var orderBookUseCase: any OrderBookUseCase {
        shared {
            OrderBookUseCaseImpl(orderRepository: orderRepository)
        }
    }

    var updateOrderUseCase: any UpdateOrderUseCase {
        shared {
            UpdateOrderUseCaseImpl(orderRepository: orderRepository)
        }
    }
    
    var deleteOrderUseCase: any DeleteOrderUseCase {
        shared {
            DeleteOrderUseCaseImpl(orderRepository: orderRepository)
        }
    }
}
