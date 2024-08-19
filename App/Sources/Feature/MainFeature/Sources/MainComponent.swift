import NeedleFoundation
import Service
import SwiftUI

public protocol MainDependency: Dependency {
    var goalReadingFactory: any GoalReadingFactory { get }
}

public final class MainComponent: Component<MainDependency>, MainFactory {
    public func makeView() -> some View {
        MainView(goalReadingFactory: dependency.goalReadingFactory)
    }
}
