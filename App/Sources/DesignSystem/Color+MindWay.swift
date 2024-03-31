import UIKit

public extension UIColor {
    enum MindWayColorSystem {
        case main(Main)
        case black(Black)
        case gray(Gray)
        case system(System)
        case white(White)
    }

    static func mindway(_ style: MindWayColorSystem) -> UIColor {
        switch style {
        case let .main(colorable as MindWayColorable),
            let .black(colorable as MindWayColorable),
            let .gray(colorable as MindWayColorable),
            let .system(colorable as MindWayColorable),
            let .white(colorable as MindWayColorable):
            return colorable.color
        }
    }
}