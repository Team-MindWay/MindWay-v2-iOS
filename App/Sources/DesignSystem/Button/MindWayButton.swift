import SwiftUI

public struct MindWayButton: View {
    var text: String = ""
    var buttonStyle: ButtonStyleType
    var action: ()  -> Void
    
    
    public init(
        text: String,
        buttonStyle: ButtonStyleType,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.buttonStyle = buttonStyle
        self.action = action
    }
    
    public var body: some View {
        HStack {
            Spacer()
            
            Text(text)
                .padding(.horizontal, 10)
                .padding(.vertical, 16)
            
            Spacer()
        }
        .buttonWrapper(action)
        .buttonStyle(MindWayButtonStyle(style: buttonStyle))
    }
}
