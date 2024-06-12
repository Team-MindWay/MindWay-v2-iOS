import SwiftUI

struct RootView: View {
    @EnvironmentObject var sceneState: SceneState
    private let signinFactory: any SigninFactory
    
    public init(
        signinFactory: any SigninFactory
    ) {
        self.signinFactory = signinFactory
    }

    var body: some View {
        Group {
            switch sceneState.sceneFlow {
            case .login:
                signinFactory.makeView()
                    .eraseToAnyView()
                    .environmentObject(sceneState)
            }
        }
        .animation(.default, value: sceneState.sceneFlow)
    }
}
