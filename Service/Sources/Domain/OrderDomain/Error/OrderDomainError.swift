import Foundation

public enum OrderDomainError: Error {
    case badRequest
    case unauthorized
    case notFound
    case forBidden
}

extension OrderDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badRequest:
            return "잘못된 요청입니다."
        case .unauthorized:
            return "권한이 없습니다."
        case .notFound:
            return "존재하지 않는 도서입니다."
        case .forBidden:
            return "자신이 작성하지 않은 도서는 수정/삭제가 불가능합니다."
        }
    }
}

