import SwiftUI

public protocol GoalReadingFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
