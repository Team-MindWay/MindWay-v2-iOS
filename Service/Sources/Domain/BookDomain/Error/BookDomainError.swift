import Foundation

public enum BookDomainError: Error {
    case unauthorized
}

extension BookDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "권한이 없습니다."
        }
    }
}
