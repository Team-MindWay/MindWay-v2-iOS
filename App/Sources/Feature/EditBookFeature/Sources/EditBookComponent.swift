import NeedleFoundation
import Service
import SwiftUI

public protocol EditBookDependency: Dependency {}

public final class EditBookComponent: Component<EditBookDependency>, EditBookFactory {
    public func makeView() -> some View {
        EditBookView(viewModel: EditBookViewModel())
    }
}

