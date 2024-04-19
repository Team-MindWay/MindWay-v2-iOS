import SwiftUI

struct BookOrderView: View {
    @StateObject var viewModel = BookOrderViewModel()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    VStack(spacing: 28) {
                        MindWayTextField(
                            "책 제목을 입력해주세요.",
                            text: $viewModel.bookTitle,
                            title: "제목",
                            errorText: "올바른 책 제목을 입력해주세요.",
                            isError: viewModel.titleError
                        )

                        MindWayTextField(
                            "저자를 입력해주세요.",
                            text: $viewModel.bookAuthor,
                            title: "저자",
                            errorText: "올바른 책 제목을 입력해주세요.",
                            isError: viewModel.authorError
                        )

                        MindWayTextField(
                            "YES24 링크를 입력해주세요.",
                            text: $viewModel.bookURL,
                            title: "링크",
                            errorText: "올바른 YES24 링크를 입력해주세요.",
                            isError: viewModel.linkError
                        )
                    }
                    .padding(.vertical, 28)
                    .padding(.top, -48)

                    Spacer()

                    MindWayButton(
                        text: "적용하기",
                        buttonStyle: .default
                    ) {
                        viewModel.titleError = viewModel.bookTitle.isEmpty
                        viewModel.authorError = viewModel.bookAuthor.isEmpty
                        viewModel.linkError = viewModel.bookURL.isEmpty

                        if !viewModel.bookURL.isEmpty
                            && !viewModel.bookAuthor.isEmpty
                            && !viewModel.bookTitle.isEmpty {
                            dismiss()
                        }
                    }
                    .padding(.bottom, 20)
                }
                .padding(.horizontal, 24)
                .mindWayBackButton(dismiss: dismiss)
                .toolbar {
                    ToolbarItemGroup(placement: .principal) {
                        Text("도서 신청")
                            .mindWaySemiboldFont(.m2)
                    }

                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            viewModel.isWarning = true
                        } label: {
                            MindWayAsset.Icons.exclamationMark.swiftUIImage
                        }
                    }
                }
            }
            .mindWayAlert(
                title: "신청하려는 책이 도서관에 있는지 확인해주세요. \n부적절한 도서 신청시 통보없이 삭제되며, \n후에 불이익이 있을 수 있습니다.",
                isShowing: $viewModel.isWarning,
                alertActions: [
                    .init(text: "확인", style: .default) {
                        viewModel.isWarning = false
                    }
                ]
            )
        }
    }
}
