import SwiftUI

public extension Color.MindWayColorSystem {
    enum ButtonPushed: MindWayColorable {
        case buttonpushed
    }
}

public extension Color.MindWayColorSystem.ButtonPushed {
    var color: Color {
        switch self {
        case .buttonpushed: return MindWayAsset.ButtonPushed.buttonpushed.swiftUIColor
        }
    }
}
