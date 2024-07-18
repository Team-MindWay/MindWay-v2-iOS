import NeedleFoundation
import SwiftUI

public protocol TabBarDependency: Dependency {
    var mainFactory: any MainFactory { get }
    var eventFactory: any EventFactory { get }
    var recommendBookFactory: any RecommendBookFactory { get }
    var myPageFactory: any MyPageFactory { get }
}

public final class TabBarComponent: Component<TabBarDependency>, TabBarFactory {
    public func makeView() -> some View {
        TabBarView(
            mainFactory: dependency.mainFactory,
            eventFactory: dependency.eventFactory,
            recommendBookFactory: dependency.recommendBookFactory,
            myPageFactory: dependency.myPageFactory
        )
    }
}
