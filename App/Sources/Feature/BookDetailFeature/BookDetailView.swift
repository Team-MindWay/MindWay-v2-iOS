import SwiftUI

struct BookDetailView: View {
    @State var isShowingBottomSheet = false
    @State var isDelete = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    TextFieldRow(
                        placeholder: "제목",
                        content: "세상의 마지막 기차역"
                    )
                    
                    TextFieldRow(
                        placeholder: "줄거리",
                        content: "세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마"
                    )
                    .padding(.top, 20)
                    
                    Spacer()
                }
                .padding(.top, -20)
                .padding(.horizontal, 24)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            isDelete = true
                        } label: {
                            MindWayAsset.Icons.seeMore.swiftUIImage
                        }
                    }
                    
                    ToolbarItemGroup(placement: .principal) {
                        Text("자세히 보기")
                            .mindWaySemiboldFont(.m2)
                    }
                }
                .mindWayBackButton(dismiss: dismiss)
            }
        }
    }
    
    @ViewBuilder
    func TextFieldRow(
        placeholder: String,
        content: String
    ) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(placeholder)
                .foregroundColor(.mindway(.gray(.g4)))
                .mindWayRegularFont(.label)
            
            HStack {
                Text(content)
                
                Spacer()
            }
            .mindWayRegularFont(.m3)
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.mindway(.gray(.g1)))
            }
        }
    }
}

#Preview {
    BookDetailView()
}
