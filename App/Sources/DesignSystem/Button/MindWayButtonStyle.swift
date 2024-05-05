import SwiftUI

public extension MindWayButton {
    enum ButtonStyleType {
        case `default`
        case cancel
    }
}

public struct MindWayButtonStyle: ButtonStyle {
    var style: MindWayButton.ButtonStyleType

    public func makeBody(configuration: Configuration) -> some View {
        switch style {
        case .`default`:
            DefaultButton(configuration: configuration)
        case .cancel:
            CancelButton(configuration: configuration)
        }
    }
}

public extension MindWayButtonStyle {
    struct DefaultButton: View {
        let configuration: ButtonStyle.Configuration
            
        var backgroundColor: Color {
            configuration.isPressed ? Color.mindway(.main(.buttonpushed)) : Color.mindway(.main(.main))
        }
        
        public var body: some View {
            configuration.label
                .mindWaySemiboldFont(.m3)
                .foregroundColor(.mindway(.white(.white)))
                .background(backgroundColor)
                .cornerRadius(8)
        }
    }
    
    struct CancelButton: View {
        let configuration: ButtonStyle.Configuration
            
        var backgroundColor: Color {
            configuration.isPressed ? Color.mindway(.gray(.g2)) : Color.mindway(.gray(.g1))
        }
        
        public var body: some View {
            configuration.label
                .mindWaySemiboldFont(.m3)
                .foregroundColor(.mindway(.gray(.g6)))
                .background(backgroundColor)
                .cornerRadius(8)
        }
    }
}
