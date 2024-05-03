import SwiftUI

struct MindWayIntroduceView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("스마트한 도서실 알리미,")
                    .mindWayRegularFont(.m3)
                    .padding(.top, 42)
                
                Text("GSM 도서실 종합 서비스 입니다")
                    .mindWaySemiboldFont(.m1)
                    .padding(.top, 12)
                
                Text("도서부원이 추천하는 책과 도서실 이벤트를\n모두 한 페이지에서 확인할 수 있어요.\n도서부원이 추천하는 숨은 재미있는 책을\n빌려 볼 수 있습니다.\n친구들과 함께 독서에 관심을 가지고,\nGSM 독서왕이 되어 보는 건 어떨까요?\n마인드웨이가 여러분의 건강한 독서습관을 응원합니다!")
                    .multilineTextAlignment(.center)
                    .padding(.top, 48)
                    .lineSpacing(13)
                
                Spacer()
                
                Text("© 2022. MINDWAY All rights reserved.")
                    .mindWayRegularFont(.label)
                    .foregroundColor(.mindway(.gray(.g4)))
                    .padding(.bottom, 26)
            }
            .mindWayBackButton(dismiss: dismiss)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("MINDWAY 소개")
                        .mindWaySemiboldFont(.m2)
                }
            }
        }
        
    }
}
