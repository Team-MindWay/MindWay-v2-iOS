import SwiftUI

struct BookPostView: View {
    @StateObject var viewModel: BookPostViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MindWayTextField(
                    "책 제목을 입력해주세요",
                    text: $viewModel.title,
                    title: "제목"
                )
                
                MindWayTextEditor(
                    "줄거리를 입력해주세요",
                    text: $viewModel.plot,
                    title: "줄거리",
                    textCount: viewModel.plot.count,
                    maxTextCount: 1000
                )
                .padding(.top, 20)
                
                Spacer()
                
                MindWayButton(
                    text: "확인",
                    buttonStyle: .default
                ) {
                    dismiss()
                }
                .padding(.top, 18)
            }
            .padding(.top, -20)
            .padding(.horizontal, 24)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("독서 추가")
                        .mindWaySemiboldFont(.m2)
                }
            }
            .mindWayBackButton(dismiss: dismiss)
        }
    }
}


#Preview {
    BookPostView(viewModel: BookPostViewModel())
}
