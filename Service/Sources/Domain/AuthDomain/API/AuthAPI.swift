import Foundation
import Moya

public enum AuthAPI {
    case login(code: String)
    case reissueToken
    case logout
}

extension AuthAPI: MindWayAPI {
    public typealias ErrorType = AuthDomainError
    
    public var domain: MindWayDomain {
        .auth
    }
    
    public var urlPath: String {
        switch self {
        case .login, .reissueToken, .logout:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .login:
            return .post

        case .reissueToken:
            return .patch

        case .logout:
            return .delete
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case let .login(code):
            return .requestParameters(parameters: [
                    "code" : code
                ],
                encoding: JSONEncoding.default)
            
        case .reissueToken:
            return .requestPlain
            
        case .logout:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .reissueToken:
            return .refreshToken
            
        case .logout:
            return .accessToken
            
        default:
            return .none
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .login:
            return [
                500: .internalServerError
            ]
            
        case .reissueToken:
            return [
                401: .unauthorized,
                404: .notFound
            ]
            
        case .logout:
            return [
                401: .unauthorized,
                404: .notFound
            ]
        }
    }
}
