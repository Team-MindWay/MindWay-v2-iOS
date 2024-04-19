import SwiftUI

struct BookDetailView: View {
    @StateObject var viewModel: BookDetailViewModel
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
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            viewModel.isShowingBottomSheet = true
                        } label: {
                            MindWayAsset.Icons.seeMore.swiftUIImage
                        }
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("자세히 보기")
                            .mindWaySemiboldFont(.m2)
                    }
                }
                .mindWayBackButton(dismiss: dismiss)
            }
            .mindWayAlert(
                title: "독서를 삭제하시겠습니까?",
                isShowing: $viewModel.isDelete,
                alertActions: [
                    .init(text: "취소", style: .cancel) {
                        viewModel.isDelete = false
                    },
                    .init(text: "삭제", style: .default) { }
                ]
            )
            .mindWayBottomSheet(isShowing: $viewModel.isShowingBottomSheet) {
                VStack(alignment: .leading, spacing: 0) {
                    Button {
                        viewModel.isNavigateBookEditPage = true
                    } label: {
                        Text("독서 수정")
                            .mindWayRegularFont(.m3)
                            .foregroundColor(.mindway(.black(.black)))
                            .padding(.top, 28)
                            .padding(.bottom, 20)
                    }
                    
                    Divider()
                    
                    Button {
                        viewModel.isDelete = true
                        viewModel.isShowingBottomSheet = false
                    } label: {
                        Text("독서 삭제")
                            .mindWayRegularFont(.m3)
                            .foregroundColor(.mindway(.system(.system)))
                            .padding(.top, 20)
                            .padding(.bottom, 46)
                    }
                }
                .padding(.horizontal, 24)
            }
            .fullScreenCover(
                isPresented: Binding(
                    get: { viewModel.isNavigateBookEditPage },
                    set: { _ in}
                )
            ) {
                
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
