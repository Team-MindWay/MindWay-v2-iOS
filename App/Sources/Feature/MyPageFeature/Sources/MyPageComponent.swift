import NeedleFoundation
import Service
import SwiftUI

public protocol MyPageDependency: Dependency {
    
}

public final class MyPageComponent: Component<MyPageDependency>, MyPageFactory {
    public func makeView() -> some View {
        MyPageView(viewModel: MyPageViewModel())
    }
}

