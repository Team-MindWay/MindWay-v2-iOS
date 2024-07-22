import SwiftUI
import Service

struct SigninView: View {
    @StateObject var viewModel: SigninViewModel
    private let mainFactory: any MainFactory
    @EnvironmentObject var sceneState: SceneState
    
    init(
        viewModel: SigninViewModel,
        mainFactory: any MainFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.mainFactory = mainFactory
    }
    
    var body: some View {
        VStack {
            MindWayAsset.Images.mindWay.swiftUIImage
                .padding(.bottom, 334)
            
            GAuthButtonView { code in
                viewModel.signin(code: code)
                
            }
            .padding(.horizontal, 24)
            .frame(height: 50)
            .padding(.bottom, 16)
            .onChange(of: viewModel.isSuccessSignin) { newValue in
                guard newValue else { return }
                sceneState.sceneFlow = .main
            }
        }
    }
}
