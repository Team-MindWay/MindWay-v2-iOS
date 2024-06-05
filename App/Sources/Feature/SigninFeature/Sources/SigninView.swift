import SwiftUI
import Service

struct SigninView: View {
    @StateObject var viewModel: SigninViewModel
    private let signinFactory: any SigninFactory
    
    init(
        viewModel: SigninViewModel,
        signinFactory: any SigninFactory

    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.signinFactory = signinFactory

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
        }
    }
}
