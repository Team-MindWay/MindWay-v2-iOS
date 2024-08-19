import SwiftUI

public protocol BookPostFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
