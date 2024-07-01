import Foundation

public enum MyDomainError: Error {
    case unauthorized
    case notFound
}

extension MyDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "블랙리스트입니다."
        case .notFound:
            return "이벤트를 찾지 못했습니다."
        }
    }
}
