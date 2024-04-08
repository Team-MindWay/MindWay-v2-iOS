import SwiftUI

struct MainView: View {
    var week: [String] = ["일", "월", "화", "수", "목", "금", "토"]
    var bookCount: [Int] = [0, 2, 2, 4, 1, 0, 0]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                MindWayAsset.Icons.mindwayLogo.swiftUIImage
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
                    
                    HStack(spacing: 4) {
                        ZStack(alignment: .leading) {
                            MonthlyBookCountGraph()
                            
                            WeeklyBookCountGraph()
                        }
                        .padding(.trailing, 48)
                        
                        Text("9")
                            .mindWaySemiboldFont(.m1)
                        
                        Text("/")
                            .mindWayRegularFont(.m1)
                            .foregroundColor(.mindway(.gray(.g3)))
                        
                        Text("30")
                            .mindWayRegularFont(.m3)
                            .foregroundColor(.mindway(.main(.main)))
                    }
                    .padding(.horizontal, 48)
                    
                    VStack {
                        HStack(spacing: 26) {
                            ForEach(bookCount, id: \.self) { count in
                                DailyBookCountGraph(count: count)
                            }
                        }
                        
                        HStack(spacing: 30) {
                            ForEach(week, id: \.self) { week in
                                Text(week)
                                    .foregroundColor(.mindway(.gray(.g8)))
                                    .mindWayRegularFont(.label)
                            }
                        }
                    }
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
    func MonthlyBookCountGraph() -> some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 10)
            .foregroundColor(.mindway(.gray(.g2)))
    }
    
    @ViewBuilder
    func WeeklyBookCountGraph() -> some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 100, height: 10)
            .foregroundColor(.mindway(.main(.main)))
    }
    
    @ViewBuilder
    func DailyBookCountGraph(count: Int) -> some View {
        VStack {
            Text("\(count)")
                .mindWayRegularFont(.label)
                .foregroundColor(.mindway(.gray(.g8)))
            
            RoundedRectangle(cornerRadius: 4)
                .frame(width: 16, height: CGFloat(count+1)*CGFloat((count+1)))
                .foregroundColor(.mindway(.main(.main)))
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

#Preview {
    MainView()
}
