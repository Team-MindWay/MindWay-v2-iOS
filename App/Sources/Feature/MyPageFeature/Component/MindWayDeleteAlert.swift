import SwiftUI

public extension View {
    func mindWayDeleteAlert(
        bookTitle: String,
        isShowing: Binding<Bool>,
        alertActions: [mindWayAlertButtonType]
    ) -> some View {
        modifier(
            MindWayDeleteAlertModifier(
                bookTitle: bookTitle,
                isShowing: isShowing,
                alertActions: alertActions
            )
        )
    }
}

struct MindWayDeleteAlertModifier: ViewModifier {
    var bookTitle: String
    @Binding var isShowing: Bool
    var alertActions: [mindWayAlertButtonType]

    public init(
        bookTitle: String,
        isShowing: Binding<Bool>,
        alertActions: [mindWayAlertButtonType]
    ) {
        self.bookTitle = bookTitle
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

                mindWayDeleteAlert()
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
    func mindWayDeleteAlert() -> some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 0) {
                HStack(spacing: 0) {
                    Text("신청하신 도서를 ")
                        .foregroundColor(.mindway(.black(.black)))
                    
                    Text("삭제")
                        .foregroundColor(.mindway(.main(.main)))
                    
                    Text("하시겠습니까?")
                        .foregroundColor(.mindway(.black(.black)))
                }
                .mindWayRegularFont(.m3)
                .multilineTextAlignment(.center)
                
                Text(bookTitle)
                    .mindWayRegularFont(.m3)
                    .frame(width: 310)
                    .padding(.vertical, 15)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(Color.mindway(.gray(.g2)))
                    }
                    .padding(.top, 12)
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
