import SwiftUI

public protocol EditBookOrderFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
