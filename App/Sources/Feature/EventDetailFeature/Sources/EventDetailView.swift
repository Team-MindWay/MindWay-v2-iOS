import SwiftUI

struct EventDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    private let eventFactory: any EventFactory
    
    init(
        eventFactory: any EventFactory
    ) {
        self.eventFactory = eventFactory
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                MindWayAsset.Images.eventDetailIMG.swiftUIImage
                    .resizable()
                    .cornerRadius(8)
                    .frame(height: 264)
                    .padding(.trailing, 24)
                
                Text("가을 독서 행사")
                    .mindWaySemiboldFont(.m1)
                    .padding(.top, 20)
                
                Text("독서의 계절, 가을을 맞아 도서관에서 특별한 이벤트를준비했습니다. 랜덤으로 초성 책 제목이 적혀있는 쪽지를 뽑고, 그에 맞는 책을 찾아오면 푸짐한 선물뽑기를 할 수 있습니다. 점심시간마다 진행할 예정이니 많은 관심 바랍니다.")
                    .mindWayRegularFont(.m3)
                    .padding(.trailing, 24)
                    .padding(.top, 10)
                    .lineSpacing(5)
                
                
                Text("2024년 08월 1일 ~ 2024년 09월 1일")
                    .mindWayRegularFont(.label)
                    .frame(height: 22)
                    .padding(.top, 14)
                    .foregroundColor(.mindway(.gray(.g4)))
                
                Spacer()
            }
            .padding(.leading, 24)
            .padding(.top, -35)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    
                    Text("진행중인 이벤트")
                        .mindWaySemiboldFont(.m2)
                }
            }
            .mindWayBackButton(dismiss: dismiss)
        }
        
    }
}


