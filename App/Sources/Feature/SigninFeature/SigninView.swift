import SwiftUI

struct SigninView: View {
    var body: some View {
        VStack {
            MindWayAsset.Images.mindWay.swiftUIImage
                .padding(.bottom, 334)
            
            GAuthButtonView { code in
                
            }
            .padding(.horizontal, 20)
            .frame(height: 50)
            .padding(.bottom, 16)
        }
    }
}

#Preview {
    SigninView()
}
