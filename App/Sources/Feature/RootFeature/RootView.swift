import SwiftUI

struct RootView: View {
    @EnvironmentObject var sceneState: SceneState
    private let signinFactory: any SigninFactory
    private let tabBarFactory: any TabBarFactory
    
    public init(
        signinFactory: any SigninFactory,
        tabBarFactory: any TabBarFactory
    ) {
        self.signinFactory = signinFactory
        self.tabBarFactory = tabBarFactory
    }

    var body: some View {
        Group {
            switch sceneState.sceneFlow {
            case .login:
                signinFactory.makeView()
                    .eraseToAnyView()
                    .environmentObject(sceneState)
            case .main:
                tabBarFactory.makeView()
                    .eraseToAnyView()
                    .environmentObject(sceneState)
            }
        }
        .animation(.default, value: sceneState.sceneFlow)
    }
}
