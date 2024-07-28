import SwiftUI

struct MainView: View {
    var week: [String] = ["일", "월", "화", "수", "목", "금", "토"]
    var bookCount: [Int] = [0, 2, 2, 4, 1, 0, 0]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                MindWayAsset.Icons.mindWayLogo.swiftUIImage
                    .padding(.leading, 24)
                
                Spacer()
            }
            
            BannerView()
                .padding(.top, 23)
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(height: 219)
                    .foregroundColor(.mindway(.white(.white)))
                    .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                
                VStack(spacing: 22) {
                    HStack {
                        Text("목표 도서량")
                            .mindWaySemiboldFont(.m2)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.mindway(.gray(.g4)))
                    }
                    .padding(.horizontal, 48)
                    .padding(.top, 6)
                    
                    GoalReadingGraph(
                        bookCount: bookCount,
                        week: week
                    )
                }
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(height: 247)
                    .foregroundColor(.mindway(.white(.white)))
                    .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                
                VStack(spacing: 0) {
                    HStack {
                        Text("이달의 독서왕")
                            .mindWaySemiboldFont(.m2)
                            .foregroundColor(.mindway(.black(.black)))
                            .padding(.leading, 48)
                        
                        Spacer()
                    }
                    
                    MonthlyBookworm(count: 30)
                        .padding(.top, 20)
                }
            }
            
            Spacer()
        }
    }
    
    @ViewBuilder
    func BannerView() -> some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(height: 100)
            .padding(.horizontal, 24)
            .foregroundColor(.mindway(.gray(.g1)))
            .overlay {
                HStack(spacing: 20) {
                    MindWayAsset.Icons.megaphone.swiftUIImage
                    
                    VStack(alignment: .leading) {
                        Text("가을 독서 행사")
                            .mindWaySemiboldFont(.m2)
                        
                        Text("독서의 계절, 가을을 맞아\n도서관에서 특별한 이벤트를 준비했습니다.")
                            .mindWayRegularFont(.label2)
                    }
                    Spacer()
                }
                .padding(.leading, 36)
            }
    }
    
    @ViewBuilder
    func MonthlyBookworm(count: Int) -> some View {
        VStack(spacing: 8) {
            Text("\(count)권")
                .foregroundColor(.mindway(.gray(.g8)))
                .mindWaySemiboldFont(.m3)
            
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 72, height: CGFloat(count*3))
                .foregroundColor(.mindway(.main(.main)))
            
            Text("한재형")
                .foregroundColor(.mindway(.gray(.g8)))
                .mindWaySemiboldFont(.m3)
        }
    }
}
