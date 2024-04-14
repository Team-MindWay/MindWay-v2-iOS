import Foundation

public enum RefreshError: Error {
    case unauthorized
    case notFound
}

extension RefreshError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "Unauthorized"
        case .notFound:
            return "NotFound"
        }
    }
}
