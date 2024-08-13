import SwiftUI

public protocol BookOrderFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
