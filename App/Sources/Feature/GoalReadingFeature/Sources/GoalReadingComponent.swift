import NeedleFoundation
import Service
import SwiftUI

public protocol GoalReadingDependency: Dependency {
    var bookDetailFactory: any BookDetailFactory { get }
    var bookPostFactory: any BookPostFactory { get }
}

public final class GoalReadingComponent: Component<GoalReadingDependency>, GoalReadingFactory {
    public func makeView() -> some View {
        GoalReadingView(
            bookDetailFactory: dependency.bookDetailFactory,
            bookPostFactory: dependency.bookPostFactory
        )
    }
}
