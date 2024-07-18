import NeedleFoundation
import Service
import SwiftUI

public protocol EventDependency: Dependency {}

public final class EventComponent: Component<EventDependency>, EventFactory {
    public func makeView() -> some View {
        MainView()
    }
}

