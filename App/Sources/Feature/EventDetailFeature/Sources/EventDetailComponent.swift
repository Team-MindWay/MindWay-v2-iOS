import NeedleFoundation
import Service
import SwiftUI

public protocol EventDetailDependency: Dependency {
    var eventFactory: any EventFactory { get }
}

public final class EventDetailComponent: Component<EventDetailDependency>, EventDetailFactory {
    public func makeView() -> some View {
        EventDetailView(
            eventFactory: dependency.eventFactory
        )
    }
}
