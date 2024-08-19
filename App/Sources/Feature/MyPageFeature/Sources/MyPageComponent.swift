import NeedleFoundation
import Service
import SwiftUI

public protocol MyPageDependency: Dependency {
    var mindwayIntroduceFactory: any MindwayIntroduceFactory { get }
    var editBookOrderFactory: any EditBookOrderFactory { get }
}

public final class MyPageComponent: Component<MyPageDependency>, MyPageFactory {
    public func makeView() -> some View {
        MyPageView(
            viewModel: MyPageViewModel(),
            mindwayIntroduceFactory: dependency.mindwayIntroduceFactory,
            editBookOrderFactory: dependency.editBookOrderFactory
        )
    }
}
