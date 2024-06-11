import SwiftUI
import Service

@main
struct MindWayApp: App {
    @State private var showMainView = false
    @StateObject private var sceneState = SceneState(sceneFlow: .login)

    var body: some Scene {
        WindowGroup {
            if showMainView {
                AppComponent().makeRootView()
                    .environmentObject(sceneState)
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                showMainView = true
                            }
                        }
                    }
            }
        }
    }
}
