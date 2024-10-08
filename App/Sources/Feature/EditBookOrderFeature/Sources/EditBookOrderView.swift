import SwiftUI

struct EditBookOrderView: View {
    @StateObject var viewModel: EditBookOrderViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack(spacing: 0) {
                    VStack(spacing: 28) {
                        MindWayTextField(
                            "책 제목을 입력해주세요.",
                            text: $viewModel.title,
                            title: "제목"
                        )

                        MindWayTextField(
                            "저자를 입력해주세요.",
                            text: $viewModel.author,
                            title: "저자"
                        )

                        MindWayTextField(
                            "YES24 링크를 입력해주세요.",
                            text: $viewModel.bookURL,
                            title: "링크"
                        )
                    }
                    .padding(.vertical, 28)
                    .padding(.top, -48)

                    Spacer()

                    MindWayButton(
                        text: "수정하기",
                        buttonStyle: .default
                    ) {
                        dismiss()
                        #warning("수정 API 연결 시 서버로 보내는 기능 추가하기")
                    }
                    .padding(.bottom, 20)
                }
                .mindWayBackButton(dismiss: dismiss)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("도서 수정")
                            .mindWaySemiboldFont(.m2)
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}
