import Moya

public enum RefreshAPI {
    case reissueToken
}

extension RefreshAPI: MindWayAPI {
    public typealias ErrorType = RefreshError

    public var domain: MindWayDomain {
        .auth
    }

    public var urlPath: String {
        switch self {
        case .reissueToken:
            return "/reissue"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .reissueToken:
            return .put
        }
    }

    public var task: Moya.Task {
        switch self {
        default:
            return .requestPlain
        }
    }

    public var jwtTokenType: JwtTokenType {
        switch self {
        case .reissueToken:
            return .refreshToken
        }
    }

    public var errorMap: [Int: ErrorType] {
        switch self {
        case .reissueToken:
            return [
                401: .unauthorized,
                404: .notFound
            ]
        }
    }
}
