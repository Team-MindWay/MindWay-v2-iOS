import SwiftUI

public protocol RecommendBookFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
