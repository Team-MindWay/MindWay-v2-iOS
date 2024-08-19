import NeedleFoundation
import Service
import SwiftUI

public protocol EditBookOrderDependency: Dependency {}

public final class EditBookOrderComponent: Component<EditBookOrderDependency>, EditBookOrderFactory {
    public func makeView() -> some View {
        EditBookOrderView(viewModel: EditBookOrderViewModel())
    }
}
