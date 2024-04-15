import SwiftUI

struct RecommendBook: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("네가 마지막으로 남긴 노래")
                    .mindWaySemiboldFont(.m3)
                
                Spacer()
                
                Text("이치조 미사키")
                    .mindWayRegularFont(.label)
                    .foregroundColor(.mindway(.gray(.g4)))
            }
            
            Text("내가 사랑해 마지않는 네가 마지막으로 남긴 노래를 들었다.")
                .mindWayRegularFont(.m3)
                .foregroundColor(.mindway(.gray(.g8)))
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 24)
        .background(Color.mindway(.white(.white)))
        .cornerRadius(8)
        .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 0)
    }
}
