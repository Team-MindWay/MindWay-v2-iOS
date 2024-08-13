import NeedleFoundation
import Service
import SwiftUI

public protocol MyPageDependency: Dependency {
    var mindwayIntroduceFactory: any MindwayIntroduceFactory { get }
}

public final class MyPageComponent: Component<MyPageDependency>, MyPageFactory {
    public func makeView() -> some View {
        MyPageView(viewModel: MyPageViewModel(), mindwayIntroduceFactory: dependency.mindwayIntroduceFactory)
    }
}
