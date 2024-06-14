import Foundation

public enum GoalDomainError: Error {
    case badRequest
    case unauthorized
}

extension GoalDomainError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badRequest:
            return "이미 목표가 설정 되어 있습니다."
        case .unauthorized:
            return "권한이 없습니다."
        }
    }
}
