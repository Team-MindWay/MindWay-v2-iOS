import SwiftUI

public extension UIColor.MindWayColorSystem {
    enum Main: MindWayColorable {
        case main
    }
}

public extension UIColor.MindWayColorSystem.Main {
    var color: Color {
        switch self {
        case .main: return MindWayAsset.Main.main.swiftUIColor
        }
    }
}
