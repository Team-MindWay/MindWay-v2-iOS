import SwiftUI

public extension Color.MindWayColorSystem {
    enum Black: MindWayColorable {
        case black
    }
}

public extension Color.MindWayColorSystem.Black {
    var color: Color {
        switch self {
        case .black: return MindWayAsset.Black.black.swiftUIColor
        }
    }
}
