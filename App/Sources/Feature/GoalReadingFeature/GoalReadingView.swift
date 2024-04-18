import SwiftUI

struct GoalReadingView: View {
    @Environment(\.dismiss) var dismiss
    @State var isShowingSettingPage = false

    var week: [String] = ["일", "월", "화", "수", "목", "금", "토"]
    var bookCount: [Int] = [0, 2, 2, 4, 1, 0, 0]

    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 219)
                            .foregroundColor(.mindway(.white(.white)))
                            .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
                            .padding(.horizontal, 24)
                            .padding(.top, 20)

                        GoalReadingGraph(
                            bookCount: bookCount,
                            week: week
                        )
                    }

                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 60)
                            .foregroundColor(.mindway(.white(.white)))
                            .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
                            .padding(.horizontal, 24)

                        MindWayAsset.Icons.addMain.swiftUIImage
                    }

                    ForEach(0..<2, id: \.self) { _ in
                        readingBookList()
                    }

                    Spacer()
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSettingPage = true
                    } label: {
                        MindWayAsset.Icons.addBlack.swiftUIImage
                    }
                }

                ToolbarItemGroup(placement: .principal) {
                    Text("목표 도서량")
                        .mindWaySemiboldFont(.m2)
                }
            }
            .mindWayBackButton(dismiss: dismiss)
        }
        .mindWayBottomSheet(isShowing: $isShowingSettingPage) {
            SettingGoalReadingView(viewModel: GoalReadingViewModel())
        }
    }

    @ViewBuilder
    func readingBookList() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("세상의 마지막 기차역")
                    .mindWaySemiboldFont(.m1)

                Spacer()

                Text("3월 22일")
                    .mindWayRegularFont(.label)
                    .foregroundColor(.mindway(.gray(.g4)))
            }

            Text("세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마")
                .mindWayRegularFont(.m3)
                .lineLimit(3)
                .lineSpacing(3)
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 48)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.mindway(.white(.white)))
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
                .padding(.horizontal, 24)
        }
    }
}
