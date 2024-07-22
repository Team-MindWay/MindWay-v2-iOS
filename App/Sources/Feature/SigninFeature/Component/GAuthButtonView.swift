import GAuthSignin
import SwiftUI
import UIKit

struct GAuthButtonView: UIViewRepresentable {
    private let completion: (String) -> Void

    init(
        completion: @escaping (String) -> Void
    ) {
        self.completion = completion
    }

    func updateUIView(_ uiView: UIViewType, context: Context) { }

    func makeUIView(context: Context) -> some UIView {
        let gauthButton = GAuthButton(
                        auth: .signin,
                        color: .outline,
                        rounded: .default
                )
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
            .windows
            .first?
            .rootViewController
        else { return gauthButton }
        gauthButton.prepare(
            clientID: Bundle.main.object(forInfoDictionaryKey: "CLIENT_ID") as? String ?? "",
            redirectURI: Bundle.main.object(forInfoDictionaryKey: "REDIRECT_URI") as? String ?? "",
            presenting: presentingViewController,
            completion: completion
        )
        return gauthButton
    }
}
