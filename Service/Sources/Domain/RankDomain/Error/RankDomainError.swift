import Foundation

public enum RankDomainError: Error {
    case unauthorized
}

extension RankDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "블랙리스트입니다."
        }
    }
}
