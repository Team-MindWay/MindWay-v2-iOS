import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text("안녕하세요!")
                        .mindWayRegularFont(.h3)
                    
                    HStack(spacing: 0) {
                        Text("한재형")
                            .mindWaySemiboldFont(.h3)
                            .foregroundColor(.mindway(.main(.main)))
                        
                        Text("님")
                            .mindWaySemiboldFont(.h3)
                    }
                }
                .padding(.top, 60)
                
                Spacer()
                
                MindWayAsset.Icons.seeMore.swiftUIImage
            }
            
            Text("도서 신청 목록")
                .mindWayRegularFont(.label)
                .foregroundColor(.mindway(.gray(.g4)))
                .padding(.top, 40)
            
            ForEach(0..<2, id: \.self) { _ in
                BookOrderListRow()
                    .padding(.top, 20)
            }
            
            Spacer()
        }
        .padding(.horizontal, 24)
    }
    
    @ViewBuilder
    func BookOrderListRow() -> some View {
        VStack(spacing: 0) {
            HStack(spacing: 28) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("세상의 마지막 기차역")
                        .mindWayRegularFont(.m2)
                    
                    Text("무라세 다케시")
                        .mindWayRegularFont(.label)
                        .foregroundColor(.mindway(.gray(.g6)))
                }
                
                Spacer()
                
                MindWayAsset.Icons.edit.swiftUIImage
                
                MindWayAsset.Icons.trash.swiftUIImage
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.mindway(.white(.white)))
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
        }
    }
}

#Preview {
    MyPageView()
}
