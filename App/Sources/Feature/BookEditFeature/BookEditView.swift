import SwiftUI

struct BookEditView: View {
    @StateObject var viewModel: BookEditViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MindWayTextField(
                    text: $viewModel.title,
                    title: "제목"
                )
                
                MindWayTextEditor(
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
                    
                }
                .padding(.top, 18)
            }
            .padding(.top, -20)
            .padding(.horizontal, 24)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("독서 수정")
                        .mindWaySemiboldFont(.m2)
                }
            }
            .mindWayBackButton(dismiss: dismiss)
        }
    }
}
