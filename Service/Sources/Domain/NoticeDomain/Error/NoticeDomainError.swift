import Foundation

public enum NoticeDomainError: Error {
    case unauthorized
}

extension NoticeDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "AccessToken이 블랙리스트에 있습니다."
        }
    }
}
