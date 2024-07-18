import NeedleFoundation
import Service
import SwiftUI

public protocol RecommendBookDependency: Dependency {}

public final class RecommendBookComponent: Component<RecommendBookDependency>, EventFactory {
    public func makeView() -> some View {
        RecommendBookView()
    }
}

