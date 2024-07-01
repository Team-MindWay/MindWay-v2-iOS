import Foundation
import Moya

public enum RecommendAPI {
    case fetchRecommendBook(params: String)
}

extension RecommendAPI: MindWayAPI {
    public typealias ErrorType = MyDomainError
    
    public var domain: MindWayDomain {
        .recommend
    }
    
    public var urlPath: String {
        switch self {
        case .fetchRecommendBook:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .fetchRecommendBook:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .fetchRecommendBook:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .fetchRecommendBook:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .fetchRecommendBook:
            return [
                401: .unauthorized,
                404: .notFound
            ]
        }
    }
}
