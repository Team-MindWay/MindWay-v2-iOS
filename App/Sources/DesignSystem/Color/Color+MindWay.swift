import SwiftUI

public extension UIColor {
    enum MindWayColorSystem {
        case main(Main)
        case black(Black)
        case white(White)
        case gray(Gray)
        case system(System)
    }

    static func mindway(_ style: MindWayColorSystem) -> Color {
        switch style {
        case let .main(colorable as MindWayColorable),
            let .black(colorable as MindWayColorable),
            let .white(colorable as MindWayColorable),
            let .gray(colorable as MindWayColorable),
            let .system(colorable as MindWayColorable):
            return colorable.color
        }
    }
}
