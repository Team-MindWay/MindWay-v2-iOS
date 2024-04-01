import SwiftUI

public extension View {
    func mindWayRegularFont(
        _ style: Font.MindWayRegularFontSystem,
        color: Color.MindWayColorSystem,
        weight: Font.Weight
    ) -> some View {
        self
            .font(.mindWay(style))
            .foregroundColor(.mindway(color))
    }

    func mindWayRegularFont(
        _ style: Font.MindWayRegularFontSystem
    ) -> some View {
        self
            .font(.mindWay(style))
    }
}

public extension Font {
    enum MindWayRegularFontSystem: MindWayFontable {
        case h1
        case h2
        case h3
        case m1
        case m2
        case m3
        case label
    }

    static func mindWay(_ style: MindWayRegularFontSystem) -> Font {
        return style.font
    }
}

public extension Font.MindWayRegularFontSystem {
    var font: Font {
        switch self {
        case .h1: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 31))
        case .h2: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 28))
        case .h3: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 24))
        case .m1: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 20))
        case .m2: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 18))
        case .m3: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 16))
        case .label: return Font(MindWayFontFamily.PretendardVariable.regular.font(size: 14))
        }
    }
}
