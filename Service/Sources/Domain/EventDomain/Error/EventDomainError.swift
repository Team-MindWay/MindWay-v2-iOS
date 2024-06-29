import Foundation

public enum EventDomainError: Error {
    case unauthorized
    case notFound
}

extension EventDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "블랙리스트입니다."
        case .notFound:
            return "이벤트를 찾지 못했습니다."
        }
    }
}
