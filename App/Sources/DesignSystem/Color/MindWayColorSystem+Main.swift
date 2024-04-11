import SwiftUI

public extension Color.MindWayColorSystem {
    enum Main: MindWayColorable {
        case main
        case buttonpushed
    }
}

public extension Color.MindWayColorSystem.Main {
    var color: Color {
        switch self {
        case .main: return MindWayAsset.Main.main.swiftUIColor
        case .buttonpushed: return MindWayAsset.Main.buttonpushed.swiftUIColor
        }
    }
}
