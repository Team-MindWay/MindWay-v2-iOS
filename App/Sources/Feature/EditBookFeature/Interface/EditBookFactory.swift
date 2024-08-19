import SwiftUI

public protocol EditBookFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
