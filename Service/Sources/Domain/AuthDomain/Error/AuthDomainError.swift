import Foundation

public enum AuthDomainError: Error {
    case unauthorized
    case notFound
    case internalServerError
}

extension AuthDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unauthorized:
            return "권한이 없습니다."
        case .notFound:
            return "존재하지 않는 계정입니다."
        case .internalServerError:
            return "알 수 없는 에러가 발생했습니다. 지속될 시 문의 주세요."
        }
    }
}
