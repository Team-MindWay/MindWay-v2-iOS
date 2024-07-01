import Foundation

public enum RecommendDomainError: Error {
    case unauthorized
    case notFound
}

extension RecommendDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "블랙리스트입니다."
        case .notFound:
            return "추천을 찾지 못했습니다."
        }
    }
}
