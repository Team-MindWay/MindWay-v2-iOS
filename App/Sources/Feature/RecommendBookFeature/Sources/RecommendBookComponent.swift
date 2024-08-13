import NeedleFoundation
import Service
import SwiftUI

public protocol RecommendBookDependency: Dependency {
    var bookOrderFactory: any BookOrderFactory { get }
}

public final class RecommendBookComponent: Component<RecommendBookDependency>, RecommendBookFactory {
    public func makeView() -> some View {
        RecommendBookView(
            bookOrderFactory: dependency.bookOrderFactory
        )
    }
}
