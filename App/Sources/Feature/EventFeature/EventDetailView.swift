import SwiftUI

struct EventDetailView: View {
    @StateObject private var viewmodel = EventViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                Button {
                    #warning("dismiss 또는 전 뷰로 돌아가게하는 기능 추가예정")
                } label: {
                    MindWayAsset.Icons.chevronLeft.swiftUIImage
                }
                
                Spacer()
                
                Text("진행 중인 이벤트")
                    .mindWaySemiboldFont(.m2)
                    .padding(.trailing, 136)
                    .frame(height: 27)
            }
            
            MindWayAsset.Images.eventDetailIMG.swiftUIImage
                .resizable()
                .cornerRadius(8)
                .frame(height: 264)
                .padding(.trailing, 24)
                .padding(.top, 24)
                
            Text(viewmodel.eventTitle)
                .mindWaySemiboldFont(.m1)
                .padding(.top, 20)
            
            Text(viewmodel.eventDescription)
                .mindWayRegularFont(.m3)
                .padding(.trailing, 24)
                .padding(.top, 10)
                .lineSpacing(5)
            
        
            Text(viewmodel.eventTime)
                .mindWayRegularFont(.label)
                .frame(height: 22)
                .padding(.top, 14)
                .foregroundColor(.mindway(.gray(.g4)))
            
            Spacer()
        }
        .padding(.leading, 24)
        .padding(.top, 20)
        .navigationBarBackButtonHidden()
    }
}
