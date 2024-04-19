import SwiftUI

public extension View {
    func mindWayAlert(
        title: String,
        isShowing: Binding<Bool>,
        alertActions: [mindWayAlertButtonType]
    ) -> some View {
        modifier(
            MindWayAlertModifier(
                title: title,
                isShowing: isShowing,
                alertActions: alertActions
            )
        )
    }
}

struct MindWayAlertModifier: ViewModifier {
    var title: String
    @Binding var isShowing: Bool
    var alertActions: [mindWayAlertButtonType]

    public init(
        title: String,
        isShowing: Binding<Bool>,
        alertActions: [mindWayAlertButtonType]
    ) {
        self.title = title
        _isShowing = isShowing
        self.alertActions = alertActions
    }

    func body(content: Content) -> some View {
        ZStack {
            content

            if isShowing {
                Color.mindway(.gray(.g8))
                    .opacity(0.4)
                    .ignoresSafeArea()

                bitgouelAlert()
                    .padding(24)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition.move(edge: .bottom),
                            removal: .move(edge: .bottom).combined(with: .opacity)
                        )
                    )
            }
        }
        .animation(.spring(response: 0.3, dampingFraction: isShowing ? 0.7 : 0.6, blendDuration: 40), value: isShowing)
    }

    @ViewBuilder
    func bitgouelAlert() -> some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .leading) {
                Text(title)
                    .mindWayRegularFont(.m3)
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 28)
            .padding(.top, 15)

            HStack(spacing: 8) {
                ForEach(alertActions, id: \.id) { button in
                    MindWayButton(text: button.text, buttonStyle: button.style, action: button.action)
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
        }
        .padding(.top, 16)
        .background(Color.mindway(.white(.white)))
        .cornerRadius(8)
    }
}
