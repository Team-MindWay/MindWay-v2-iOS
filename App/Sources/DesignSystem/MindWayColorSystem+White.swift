import SwiftUI

public extension UIColor.MindWayColorSystem {
    enum White: MindWayColorable {
        case white
    }
}

public extension UIColor.MindWayColorSystem.White {
    var color: Color {
        switch self {
        case .white: return MindWayAsset.White.white.swiftUIColor
        }
    }
}
