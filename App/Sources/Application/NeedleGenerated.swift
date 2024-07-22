

import NeedleFoundation
import Service
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class EventDependency7c44a7ba678fce8bee09Provider: EventDependency {


    init() {

    }
}
/// ^->AppComponent->EventComponent
private func factory59c5e0d7ceb1b46b5a25e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EventDependency7c44a7ba678fce8bee09Provider()
}
private class MyPageDependency48d84b530313b3ee40feProvider: MyPageDependency {


    init() {

    }
}
/// ^->AppComponent->MyPageComponent
private func factory0f6f456ebf157d02dfb3e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MyPageDependency48d84b530313b3ee40feProvider()
}
private class MainDependency7c6a5b4738b211b8e155Provider: MainDependency {


    init() {

    }
}
/// ^->AppComponent->MainComponent
private func factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainDependency7c6a5b4738b211b8e155Provider()
}
private class TabBarDependency6b058f6bef1c605940dfProvider: TabBarDependency {
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    var eventFactory: any EventFactory {
        return appComponent.eventFactory
    }
    var recommendBookFactory: any RecommendBookFactory {
        return appComponent.recommendBookFactory
    }
    var myPageFactory: any MyPageFactory {
        return appComponent.myPageFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->TabBarComponent
private func factory9dac845129838b40415cf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return TabBarDependency6b058f6bef1c605940dfProvider(appComponent: parent1(component) as! AppComponent)
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var signinFactory: any SigninFactory {
        return appComponent.signinFactory
    }
    var tabBarFactory: any TabBarFactory {
        return appComponent.tabBarFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RootComponent
private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
}
private class SigninDependencyde06a9d0b22764487733Provider: SigninDependency {
    var loginUseCase: any LoginUseCase {
        return appComponent.loginUseCase
    }
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SigninComponent
private func factory2882a056d84a613debccf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SigninDependencyde06a9d0b22764487733Provider(appComponent: parent1(component) as! AppComponent)
}
private class RecommendBookDependency7cd1f82e68cef9855fcdProvider: RecommendBookDependency {


    init() {

    }
}
/// ^->AppComponent->RecommendBookComponent
private func factory2ba4c0e89046a26569d4e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RecommendBookDependency7cd1f82e68cef9855fcdProvider()
}

#else
extension EventComponent: Registration {
    public func registerItems() {

    }
}
extension MyPageComponent: Registration {
    public func registerItems() {

    }
}
extension MainComponent: Registration {
    public func registerItems() {

    }
}
extension TabBarComponent: Registration {
    public func registerItems() {
        keyPathToName[\TabBarDependency.mainFactory] = "mainFactory-any MainFactory"
        keyPathToName[\TabBarDependency.eventFactory] = "eventFactory-any EventFactory"
        keyPathToName[\TabBarDependency.recommendBookFactory] = "recommendBookFactory-any RecommendBookFactory"
        keyPathToName[\TabBarDependency.myPageFactory] = "myPageFactory-any MyPageFactory"
    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.signinFactory] = "signinFactory-any SigninFactory"
        keyPathToName[\RootDependency.tabBarFactory] = "tabBarFactory-any TabBarFactory"
    }
}
extension SigninComponent: Registration {
    public func registerItems() {
        keyPathToName[\SigninDependency.loginUseCase] = "loginUseCase-any LoginUseCase"
        keyPathToName[\SigninDependency.mainFactory] = "mainFactory-any MainFactory"
    }
}
extension RecommendBookComponent: Registration {
    public func registerItems() {

    }
}
extension AppComponent: Registration {
    public func registerItems() {

        localTable["keychain-Keychain"] = { [unowned self] in self.keychain as Any }
        localTable["remoteOrderDataSource-any RemoteOrderDataSource"] = { [unowned self] in self.remoteOrderDataSource as Any }
        localTable["orderRepository-any OrderRepository"] = { [unowned self] in self.orderRepository as Any }
        localTable["orderBookUseCase-any OrderBookUseCase"] = { [unowned self] in self.orderBookUseCase as Any }
        localTable["updateOrderUseCase-any UpdateOrderUseCase"] = { [unowned self] in self.updateOrderUseCase as Any }
        localTable["deleteOrderUseCase-any DeleteOrderUseCase"] = { [unowned self] in self.deleteOrderUseCase as Any }
        localTable["remoteRecommendDataSource-any RemoteRecommendDataSource"] = { [unowned self] in self.remoteRecommendDataSource as Any }
        localTable["recommendRepository-any RecommendBookRepository"] = { [unowned self] in self.recommendRepository as Any }
        localTable["fetchRecommendUseCase-any FetchRecommendUseCase"] = { [unowned self] in self.fetchRecommendUseCase as Any }
        localTable["localAuthDataSource-any LocalAuthDataSource"] = { [unowned self] in self.localAuthDataSource as Any }
        localTable["remoteAuthDataSource-any RemoteAuthDataSource"] = { [unowned self] in self.remoteAuthDataSource as Any }
        localTable["authRepository-any AuthRepository"] = { [unowned self] in self.authRepository as Any }
        localTable["loginUseCase-any LoginUseCase"] = { [unowned self] in self.loginUseCase as Any }
        localTable["logoutUseCase-any LogoutUseCase"] = { [unowned self] in self.logoutUseCase as Any }
        localTable["signinFactory-any SigninFactory"] = { [unowned self] in self.signinFactory as Any }
        localTable["mainFactory-any MainFactory"] = { [unowned self] in self.mainFactory as Any }
        localTable["tabBarFactory-any TabBarFactory"] = { [unowned self] in self.tabBarFactory as Any }
        localTable["eventFactory-any EventFactory"] = { [unowned self] in self.eventFactory as Any }
        localTable["myPageFactory-any MyPageFactory"] = { [unowned self] in self.myPageFactory as Any }
        localTable["recommendBookFactory-any RecommendBookFactory"] = { [unowned self] in self.recommendBookFactory as Any }
        localTable["remoteNoticeDataSource-any RemoteNoticeDataSource"] = { [unowned self] in self.remoteNoticeDataSource as Any }
        localTable["noticeRepository-any NoticeRepository"] = { [unowned self] in self.noticeRepository as Any }
        localTable["fetchNoticeUseCase-any FetchNoticeUseCase"] = { [unowned self] in self.fetchNoticeUseCase as Any }
        localTable["remoteMyDataSource-any RemoteMyDataSource"] = { [unowned self] in self.remoteMyDataSource as Any }
        localTable["myRepository-any MyRepository"] = { [unowned self] in self.myRepository as Any }
        localTable["fetchMyInfoUseCase-any FetchMyInfoUseCase"] = { [unowned self] in self.fetchMyInfoUseCase as Any }
        localTable["fetchMyBookListUseCase-any FetchMyBookListUseCase"] = { [unowned self] in self.fetchMyBookListUseCase as Any }
        localTable["remoteBookDataSource-any RemoteBookDataSource"] = { [unowned self] in self.remoteBookDataSource as Any }
        localTable["bookRepository-any BookRepository"] = { [unowned self] in self.bookRepository as Any }
        localTable["writeBookUseCase-any WriteBookUseCase"] = { [unowned self] in self.writeBookUseCase as Any }
        localTable["ModifyBookUseCase-any ModifyBookUseCase"] = { [unowned self] in self.ModifyBookUseCase as Any }
        localTable["fetchBookListUseCase-any FetchBookListUseCase"] = { [unowned self] in self.fetchBookListUseCase as Any }
        localTable["fetchBookDetailUseCase-any FetchBookDetailUseCase"] = { [unowned self] in self.fetchBookDetailUseCase as Any }
        localTable["deleteBookUseCase-any DeleteBookUseCase"] = { [unowned self] in self.deleteBookUseCase as Any }
        localTable["remoteRankDataSource-any RemoteRankDataSource"] = { [unowned self] in self.remoteRankDataSource as Any }
        localTable["rankRepository-any RankRepository"] = { [unowned self] in self.rankRepository as Any }
        localTable["fetchRankInfoUseCase-any FetchRankInfoUseCase"] = { [unowned self] in self.fetchRankInfoUseCase as Any }
        localTable["remoteEventDataSource-any RemoteEventDataSource"] = { [unowned self] in self.remoteEventDataSource as Any }
        localTable["eventRepository-any EventRepository"] = { [unowned self] in self.eventRepository as Any }
        localTable["fetchEventInfoUseCase-any FetchEventInfoUseCase"] = { [unowned self] in self.fetchEventInfoUseCase as Any }
        localTable["fetchEventDetailUseCase-any FetchEventDetailUseCase"] = { [unowned self] in self.fetchEventDetailUseCase as Any }
        localTable["remoteGoalDataSource-any RemoteGoalDataSource"] = { [unowned self] in self.remoteGoalDataSource as Any }
        localTable["goalRepository-any GoalRepository"] = { [unowned self] in self.goalRepository as Any }
        localTable["fetchGoalUseCase-any FetchGoalUseCase"] = { [unowned self] in self.fetchGoalUseCase as Any }
        localTable["settingGoalUseCase-any SettingGoalUseCase"] = { [unowned self] in self.settingGoalUseCase as Any }
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent->EventComponent", factory59c5e0d7ceb1b46b5a25e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MyPageComponent", factory0f6f456ebf157d02dfb3e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->TabBarComponent", factory9dac845129838b40415cf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SigninComponent", factory2882a056d84a613debccf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RecommendBookComponent", factory2ba4c0e89046a26569d4e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
