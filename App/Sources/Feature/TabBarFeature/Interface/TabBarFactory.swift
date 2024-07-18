import SwiftUI

public protocol TabBarFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
