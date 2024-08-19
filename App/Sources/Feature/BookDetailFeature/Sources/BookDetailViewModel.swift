import SwiftUI

final class BookDetailViewModel: ObservableObject {
    @Published var isDelete = false
    @Published var isNavigateBookEditPage = false
    @Published var isShowingBottomSheet = false
}
