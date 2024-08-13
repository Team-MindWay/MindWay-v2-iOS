import NeedleFoundation
import Service
import SwiftUI

public protocol MindwayIntroduceDependency: Dependency {
    var myPageFactory: any MyPageFactory { get }
}

public final class MindwayIntroduceComponent: Component<MindwayIntroduceDependency>, MindwayIntroduceFactory {
    public func makeView() -> some View {
        MindWayIntroduceView(
            myPageFactory: dependency.myPageFactory
        )
    }
}
