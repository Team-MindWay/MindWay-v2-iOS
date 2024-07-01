import Foundation
import Moya

public enum MyAPI {
    case fetchMyInfo
    case fetchMyBookList
}

extension MyAPI: MindWayAPI {
    public typealias ErrorType = MyDomainError
    
    public var domain: MindWayDomain {
        .my
    }
    
    public var urlPath: String {
        switch self {
        case .fetchMyInfo:
            return ""
        case .fetchMyBookList:
            return "/book"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .fetchMyInfo, .fetchMyBookList:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .fetchMyInfo, .fetchMyBookList:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .fetchMyInfo, .fetchMyBookList:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .fetchMyInfo, .fetchMyBookList:
            return [
                401: .unauthorized,
                404: .notFound
            ]
        }
    }
}
