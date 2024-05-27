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
                        auth: .signup,
                        color: .outline,
                        rounded: .default
                )
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
            .windows
            .first?
            .rootViewController
        else { return gauthButton }
        gauthButton.prepare(
            clientID: "42cb0e0835dd4367a6298ce9949c47ed5f39618717b2428f8783fff8905629e0",
            redirectURI: "http://localhost:8080/auth/redirect",
            presenting: presentingViewController,
            completion: completion
        )
        return gauthButton
    }
}
