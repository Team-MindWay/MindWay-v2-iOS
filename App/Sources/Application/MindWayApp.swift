import SwiftUI
import Service

@main
struct MindWayApp: App {
    @State private var showMainView = false
    
    var body: some Scene {
        WindowGroup {
            if showMainView {
                SwiftUIView()
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
