import SwiftUI

public extension Color.MindWayColorSystem {
    enum ButtonPushed: MindWayColorable {
        case buttonPushed
    }
}

public extension Color.MindWayColorSystem.ButtonPushed {
    var color: Color {
        switch self {
        case .buttonPushed: return MindWayAsset.ButtonPushed.buttonpushed.swiftUIColor
        }
    }
}
