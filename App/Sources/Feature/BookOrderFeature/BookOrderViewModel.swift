import Foundation

final class BookOrderViewModel: ObservableObject {
    @Published var bookTitle: String = ""
    @Published var bookAuthor: String = ""
    @Published var bookLink: String = ""
    @Published var titleError: Bool = false
    @Published var authorError: Bool = false
    @Published var linkError: Bool = false
    @Published var isWarning: Bool = false
}
