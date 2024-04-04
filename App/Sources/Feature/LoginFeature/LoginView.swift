import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("MindWay")
                .padding(.bottom, 334)
            
            Button {
                #warning("나중에 로그인 추가하기")
            } label: {
                HStack(spacing: 8) {
                    Spacer()
                    
                    MindWayAsset.Images.gAuthLogo.swiftUIImage
                    
                    MindWayAsset.Images.signIn.swiftUIImage
                    
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 16)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.mindway(.main(.main)))
                }
            }
            .padding(.horizontal, 24)
        }
    }
}
