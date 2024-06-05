import SwiftUI
import Service

struct SigninView: View {
    @StateObject var viewModel: SigninViewModel
    
    init(
        viewModel: SigninViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
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
