import Foundation
import Moya

public enum RankAPI {
    case rank
}

extension RankAPI: MindWayAPI {
    public typealias ErrorType = RankDomainError
    
    public var domain: MindWayDomain {
        .rank
    }
    
    public var urlPath: String {
        switch self {
        case .rank:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .rank:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .rank:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .rank:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .rank:
            return [
                401: .unauthorized
            ]
        }
    }
}
