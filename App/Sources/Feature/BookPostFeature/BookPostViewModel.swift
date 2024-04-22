import SwiftUI

final class BookPostViewModel: ObservableObject {
    @Published var title = ""
    @Published var plot = ""
}
