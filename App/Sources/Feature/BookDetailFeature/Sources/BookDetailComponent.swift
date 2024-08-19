import NeedleFoundation
import Service
import SwiftUI

public protocol BookDetailDependency: Dependency {
    var editBookFactory: any EditBookFactory { get }
}

public final class BookDetailComponent: Component<BookDetailDependency>, BookDetailFactory {
    public func makeView() -> some View {
        BookDetailView(
            editBookFactory: dependency.editBookFactory
        )
    }
}
