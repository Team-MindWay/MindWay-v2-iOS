import NeedleFoundation
import Service
import SwiftUI

public protocol BookPostDependency: Dependency {}

public final class BookPostComponent: Component<BookPostDependency>, BookPostFactory {
    public func makeView() -> some View {
        BookPostView(viewModel: BookPostViewModel())
    }
}
