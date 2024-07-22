import NeedleFoundation
import Service
import SwiftUI

public protocol RecommendBookDependency: Dependency {}

public final class RecommendBookComponent: Component<RecommendBookDependency>, RecommendBookFactory {
    public func makeView() -> some View {
        RecommendBookView()
    }
}

