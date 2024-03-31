import SwiftUI

public extension UIColor.MindWayColorSystem {
    enum Black: MindWayColorable {
        case black
    }
}

public extension UIColor.MindWayColorSystem.Black {
    var color: Color {
        switch self {
        case .black: return MindWayAsset.Black.black.swiftUIColor
        }
    }
}
