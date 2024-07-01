import Foundation
import Moya

public protocol MindWayAPI: TargetType, JwtAuthorizable {
    associatedtype ErrorType: Error
    var domain: MindWayDomain { get }
    var urlPath: String { get }
    var errorMap: [Int: ErrorType] { get }
}

public extension MindWayAPI {
    var baseURL: URL {
        URL(
            string: Bundle.module.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
        ) ?? URL(string: "https://www.google.com")!
    }

    var path: String {
        domain.asURLString + urlPath
    }

    var headers: [String : String]? {
        ["Content-Type": "application/json"]
    }

    var validationType: ValidationType {
        return .successCodes
    }
}

public enum MindWayDomain: String {
    case auth
    case event
    case book
    case my
    case goal
    case order
    case recommend
    case rank
    case notice
}

extension MindWayDomain {
    var asURLString: String {
        "/\(self.rawValue)"
    }
}

private class BundleFinder {}

extension Foundation.Bundle {
    static let module = Bundle(for: BundleFinder.self)
}
