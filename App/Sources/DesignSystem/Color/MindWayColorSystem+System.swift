import SwiftUI

public extension Color.MindWayColorSystem {
    enum System: MindWayColorable {
        case system
    }
}

public extension Color.MindWayColorSystem.System {
    var color: Color {
        switch self {
        case .system: return MindWayAsset.System.system.swiftUIColor
        }
    }
}
