import NeedleFoundation
import Service
import SwiftUI

public protocol BookOrderDependency: Dependency {
    var recommendBookFactory: any RecommendBookFactory { get }
}

public final class BookOrderComponent: Component<BookOrderDependency>, BookOrderFactory {
    public func makeView() -> some View {
        BookOrderView(
            recommendBookFactory: dependency.recommendBookFactory
        )
    }
}
