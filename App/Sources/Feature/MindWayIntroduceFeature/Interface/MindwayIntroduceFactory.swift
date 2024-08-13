import SwiftUI

public protocol MindwayIntroduceFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
