import SwiftUI

struct MindWayBackButtonModifier: ViewModifier {
    let dismiss: DismissAction
    let willDismiss: () -> Void

    init(
        dismiss: DismissAction,
        willDismiss: @escaping () -> Void = {}
    ) {
        self.dismiss = dismiss
        self.willDismiss = willDismiss
    }

    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        willDismiss()
                        dismiss()
                    } label: {
                        MindWayAsset.Icons.chevronLeft.swiftUIImage
                            .foregroundColor(.mindway(.black(.black)))
                    }
                }
            }
    }
}

public extension View {
    func mindWayBackButton(
        dismiss: DismissAction,
        willDismiss: @escaping () -> Void = {}
    ) -> some View {
        self
            .modifier(MindWayBackButtonModifier(dismiss: dismiss, willDismiss: willDismiss))
    }
}
