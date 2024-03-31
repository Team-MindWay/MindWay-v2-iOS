import SwiftUI

public extension UIColor.MindWayColorSystem {
    enum System: MindWayColorable {
        case system
    }
}

public extension UIColor.MindWayColorSystem.System {
    var color: Color {
        switch self {
        case .system: return MindWayAsset.System.system.swiftUIColor
        }
    }
}
