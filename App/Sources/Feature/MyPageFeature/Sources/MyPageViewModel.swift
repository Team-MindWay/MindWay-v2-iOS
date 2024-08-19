import Foundation

final class MyPageViewModel: ObservableObject {
    @Published var isShowingDeleteAlert = false
    @Published var isShowingBottomSheet = false
    @Published var isNavigateMindWayIntroducePage = false
    @Published var isShowingUpdateBook = false
}
