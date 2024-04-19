import Foundation

public struct mindWayAlertButtonType: Identifiable {
    public let id: String = UUID().uuidString
    let text: String
    let style: MindWayButton.ButtonStyleType
    let action: () -> Void

    public init(
        text: String = "",
        style: MindWayButton.ButtonStyleType = .default,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.style = style
        self.action = action
    }
}
