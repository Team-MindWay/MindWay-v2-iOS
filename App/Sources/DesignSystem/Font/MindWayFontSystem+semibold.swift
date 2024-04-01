import SwiftUI

public extension View {
    func mindWayFont(
        _ style: Font.MindWayFontSystem,
        color: Color.MindWayColorSystem,
        weight: Font.Weight
    ) -> some View {
        self
            .font(.mindWay(style))
            .foregroundColor(.mindway(color))
    }

    func mindWayFont(
        _ style: Font.MindWayFontSystem
    ) -> some View {
        self
            .font(.mindWay(style))
    }
}

public extension Font {
    enum MindWayFontSystem: MindWayFontable {
        case h1
        case h2
        case h3
        case m1
        case m2
        case m3
        case label
    }

    static func mindWay(_ style: MindWayFontSystem) -> Font {
        return style.font
    }
}

public extension Font.MindWayFontSystem {
    var font: Font {
        switch self {
        case .h1: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 31))
        case .h2: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 28))
        case .h3: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 24))
        case .m1: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 20))
        case .m2: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 18))
        case .m3: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 16))
        case .label: return Font(MindWayFontFamily.PretendardVariable.semiBold.font(size: 14))
        }
    }
}
