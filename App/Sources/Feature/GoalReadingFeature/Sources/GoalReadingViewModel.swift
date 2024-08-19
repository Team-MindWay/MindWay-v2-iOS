import SwiftUI

final class GoalReadingViewModel: ObservableObject {
    @Published var bookCount = ""
    @Published var isNavigateBookPostPage = false
    @Published var isShowingSettingPage = false
    @Published var isNavigateBookDetailPage = false
}
