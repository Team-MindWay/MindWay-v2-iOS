import Foundation
import Moya

public enum NoticeAPI {
    case fetchNotice
}

extension NoticeAPI: MindWayAPI {
    public typealias ErrorType = NoticeDomainError
    
    public var domain: MindWayDomain {
        .notice
    }
    
    public var urlPath: String {
        switch self {
        case .fetchNotice:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .fetchNotice:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .fetchNotice:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .fetchNotice:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .fetchNotice:
            return [
                401: .unauthorized
            ]
        }
    }
}
