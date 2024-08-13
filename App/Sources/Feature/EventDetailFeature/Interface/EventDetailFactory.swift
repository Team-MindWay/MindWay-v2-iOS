import SwiftUI

public protocol EventDetailFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
