import SwiftUI

public protocol EventFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
