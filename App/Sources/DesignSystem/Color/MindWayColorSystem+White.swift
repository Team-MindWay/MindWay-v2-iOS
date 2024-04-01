import SwiftUI

public extension Color.MindWayColorSystem {
    enum White: MindWayColorable {
        case white
    }
}

public extension Color.MindWayColorSystem.White {
    var color: Color {
        switch self {
        case .white: return MindWayAsset.White.white.swiftUIColor
        }
    }
}
