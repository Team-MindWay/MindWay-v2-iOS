import SwiftUI

public extension Color.MindWayColorSystem {
    enum Gray: MindWayColorable {
        case g1
        case g2
        case g3
        case g4
        case g5
        case g6
        case g7
        case g8
        case g9
    }
}

public extension Color.MindWayColorSystem.Gray {
    var color: Color {
        switch self {
        case .g1: return MindWayAsset.Gray.g1.swiftUIColor
        case .g2: return MindWayAsset.Gray.g2.swiftUIColor
        case .g3: return MindWayAsset.Gray.g3.swiftUIColor
        case .g4: return MindWayAsset.Gray.g4.swiftUIColor
        case .g5: return MindWayAsset.Gray.g5.swiftUIColor
        case .g6: return MindWayAsset.Gray.g6.swiftUIColor
        case .g7: return MindWayAsset.Gray.g7.swiftUIColor
        case .g8: return MindWayAsset.Gray.g8.swiftUIColor
        case .g9: return MindWayAsset.Gray.g9.swiftUIColor
        }
    }
}
