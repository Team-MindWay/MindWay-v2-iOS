import NeedleFoundation
import Service
import SwiftUI

public protocol EventDependency: Dependency {
    var eventDetailFactory: any EventDetailFactory { get }
}

public final class EventComponent: Component<EventDependency>, EventFactory {
    public func makeView() -> some View {
        EventTopBarView(
            eventDetailFactory: dependency.eventDetailFactory
        )
    }
}

