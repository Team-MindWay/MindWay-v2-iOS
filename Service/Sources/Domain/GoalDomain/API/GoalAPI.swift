import Foundation
import Moya

public enum GoalAPI {
    case settingGoal(SettingGoalRequestDTO)
    case fetchGoal
}

extension GoalAPI: MindWayAPI {
    public typealias ErrorType = GoalDomainError
    
    public var domain: MindWayDomain {
        .goal
    }
    
    public var urlPath: String {
        switch self {
        case .settingGoal, .fetchGoal:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .settingGoal:
            return .post
        case .fetchGoal:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case let .settingGoal(req):
            return .requestJSONEncodable(req)
        case .fetchGoal:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .settingGoal, .fetchGoal:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .settingGoal:
            return [
                400: .badRequest,
                401: .unauthorized
            ]
        case .fetchGoal:
            return [
                401: .unauthorized
            ]
        }
    }
}
