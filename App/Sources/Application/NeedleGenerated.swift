

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
    var eventDetailFactory: any EventDetailFactory {
        return appComponent.eventDetailFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->EventComponent
private func factory59c5e0d7ceb1b46b5a25f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EventDependency7c44a7ba678fce8bee09Provider(appComponent: parent1(component) as! AppComponent)
}
private class GoalReadingDependencye2592b9f2070897fea4aProvider: GoalReadingDependency {
    var bookDetailFactory: any BookDetailFactory {
        return appComponent.bookDetailFactory
    }
    var bookPostFactory: any BookPostFactory {
        return appComponent.bookPostFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->GoalReadingComponent
private func factory64ab00ae624edb5fc801f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return GoalReadingDependencye2592b9f2070897fea4aProvider(appComponent: parent1(component) as! AppComponent)
}
private class MyPageDependency48d84b530313b3ee40feProvider: MyPageDependency {
    var mindwayIntroduceFactory: any MindwayIntroduceFactory {
        return appComponent.mindwayIntroduceFactory
    }
    var editBookOrderFactory: any EditBookOrderFactory {
        return appComponent.editBookOrderFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MyPageComponent
private func factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MyPageDependency48d84b530313b3ee40feProvider(appComponent: parent1(component) as! AppComponent)
}
private class BookPostDependencyf1a1072299f5d75ca9e4Provider: BookPostDependency {


    init() {

    }
}
/// ^->AppComponent->BookPostComponent
private func factoryb66a93c7baaaea754546e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return BookPostDependencyf1a1072299f5d75ca9e4Provider()
}
private class MainDependency7c6a5b4738b211b8e155Provider: MainDependency {
    var goalReadingFactory: any GoalReadingFactory {
        return appComponent.goalReadingFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MainComponent
private func factoryc9274e46e78e70f29c54f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainDependency7c6a5b4738b211b8e155Provider(appComponent: parent1(component) as! AppComponent)
}
private class MindwayIntroduceDependencyc4365ffea3250f49d853Provider: MindwayIntroduceDependency {
    var myPageFactory: any MyPageFactory {
        return appComponent.myPageFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->MindwayIntroduceComponent
private func factoryf6e8064cd5a3d7f6fe63f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MindwayIntroduceDependencyc4365ffea3250f49d853Provider(appComponent: parent1(component) as! AppComponent)
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
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SigninComponent
private func factory2882a056d84a613debccf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SigninDependencyde06a9d0b22764487733Provider(appComponent: parent1(component) as! AppComponent)
}
private class EditBookDependencye4edce91232b58cd274cProvider: EditBookDependency {


    init() {

    }
}
/// ^->AppComponent->EditBookComponent
private func factory50d6bb212becd2bdda91e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EditBookDependencye4edce91232b58cd274cProvider()
}
private class RecommendBookDependency7cd1f82e68cef9855fcdProvider: RecommendBookDependency {
    var bookOrderFactory: any BookOrderFactory {
        return appComponent.bookOrderFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RecommendBookComponent
private func factory2ba4c0e89046a26569d4f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RecommendBookDependency7cd1f82e68cef9855fcdProvider(appComponent: parent1(component) as! AppComponent)
}
private class BookOrderDependency090458c21d8e6b1613deProvider: BookOrderDependency {
    var recommendBookFactory: any RecommendBookFactory {
        return appComponent.recommendBookFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->BookOrderComponent
private func factory42c646092382554dd34cf47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return BookOrderDependency090458c21d8e6b1613deProvider(appComponent: parent1(component) as! AppComponent)
}
private class EventDetailDependencya414c017c6a5e1011982Provider: EventDetailDependency {
    var eventFactory: any EventFactory {
        return appComponent.eventFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->EventDetailComponent
private func factory8610907cee92bde36225f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EventDetailDependencya414c017c6a5e1011982Provider(appComponent: parent1(component) as! AppComponent)
}
private class BookDetailDependencyd37af1bbd6f48cbfe0ceProvider: BookDetailDependency {
    var editBookFactory: any EditBookFactory {
        return appComponent.editBookFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->BookDetailComponent
private func factory7813ba428cd9266b6527f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return BookDetailDependencyd37af1bbd6f48cbfe0ceProvider(appComponent: parent1(component) as! AppComponent)
}
private class EditBookOrderDependencyd9c4ca2bacf94e3839d0Provider: EditBookOrderDependency {


    init() {

    }
}
/// ^->AppComponent->EditBookOrderComponent
private func factory656219adf97836b74cc2e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EditBookOrderDependencyd9c4ca2bacf94e3839d0Provider()
}

#else
extension EventComponent: Registration {
    public func registerItems() {
        keyPathToName[\EventDependency.eventDetailFactory] = "eventDetailFactory-any EventDetailFactory"
    }
}
extension GoalReadingComponent: Registration {
    public func registerItems() {
        keyPathToName[\GoalReadingDependency.bookDetailFactory] = "bookDetailFactory-any BookDetailFactory"
        keyPathToName[\GoalReadingDependency.bookPostFactory] = "bookPostFactory-any BookPostFactory"
    }
}
extension MyPageComponent: Registration {
    public func registerItems() {
        keyPathToName[\MyPageDependency.mindwayIntroduceFactory] = "mindwayIntroduceFactory-any MindwayIntroduceFactory"
        keyPathToName[\MyPageDependency.editBookOrderFactory] = "editBookOrderFactory-any EditBookOrderFactory"
    }
}
extension BookPostComponent: Registration {
    public func registerItems() {

    }
}
extension MainComponent: Registration {
    public func registerItems() {
        keyPathToName[\MainDependency.goalReadingFactory] = "goalReadingFactory-any GoalReadingFactory"
    }
}
extension MindwayIntroduceComponent: Registration {
    public func registerItems() {
        keyPathToName[\MindwayIntroduceDependency.myPageFactory] = "myPageFactory-any MyPageFactory"
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
    }
}
extension EditBookComponent: Registration {
    public func registerItems() {

    }
}
extension RecommendBookComponent: Registration {
    public func registerItems() {
        keyPathToName[\RecommendBookDependency.bookOrderFactory] = "bookOrderFactory-any BookOrderFactory"
    }
}
extension BookOrderComponent: Registration {
    public func registerItems() {
        keyPathToName[\BookOrderDependency.recommendBookFactory] = "recommendBookFactory-any RecommendBookFactory"
    }
}
extension EventDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\EventDetailDependency.eventFactory] = "eventFactory-any EventFactory"
    }
}
extension BookDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\BookDetailDependency.editBookFactory] = "editBookFactory-any EditBookFactory"
    }
}
extension EditBookOrderComponent: Registration {
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
        localTable["bookOrderFactory-any BookOrderFactory"] = { [unowned self] in self.bookOrderFactory as Any }
        localTable["mindwayIntroduceFactory-any MindwayIntroduceFactory"] = { [unowned self] in self.mindwayIntroduceFactory as Any }
        localTable["eventDetailFactory-any EventDetailFactory"] = { [unowned self] in self.eventDetailFactory as Any }
        localTable["editBookOrderFactory-any EditBookOrderFactory"] = { [unowned self] in self.editBookOrderFactory as Any }
        localTable["goalReadingFactory-any GoalReadingFactory"] = { [unowned self] in self.goalReadingFactory as Any }
        localTable["bookDetailFactory-any BookDetailFactory"] = { [unowned self] in self.bookDetailFactory as Any }
        localTable["bookPostFactory-any BookPostFactory"] = { [unowned self] in self.bookPostFactory as Any }
        localTable["editBookFactory-any EditBookFactory"] = { [unowned self] in self.editBookFactory as Any }
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
    registerProviderFactory("^->AppComponent->EventComponent", factory59c5e0d7ceb1b46b5a25f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->GoalReadingComponent", factory64ab00ae624edb5fc801f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->MyPageComponent", factory0f6f456ebf157d02dfb3f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->BookPostComponent", factoryb66a93c7baaaea754546e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->MindwayIntroduceComponent", factoryf6e8064cd5a3d7f6fe63f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->TabBarComponent", factory9dac845129838b40415cf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SigninComponent", factory2882a056d84a613debccf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->EditBookComponent", factory50d6bb212becd2bdda91e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->RecommendBookComponent", factory2ba4c0e89046a26569d4f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->BookOrderComponent", factory42c646092382554dd34cf47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->EventDetailComponent", factory8610907cee92bde36225f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->BookDetailComponent", factory7813ba428cd9266b6527f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->EditBookOrderComponent", factory656219adf97836b74cc2e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
