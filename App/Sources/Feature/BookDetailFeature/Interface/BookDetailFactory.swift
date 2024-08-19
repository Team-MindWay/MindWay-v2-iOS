import SwiftUI

public protocol BookDetailFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
