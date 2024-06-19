import Foundation
import Moya

public enum EventAPI {
    case eventList
    case eventDetail(eventID: String)
    case eventDate
}

extension EventAPI: MindWayAPI {
    public typealias ErrorType = EventDomainError
    
    public var domain: MindWayDomain {
        .event
    }
    
    public var urlPath: String {
        switch self {
        case .eventList:
            return ""
        case let .eventDetail(eventID):
            return "\(eventID)"
        case .eventDate:
            return "/date"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .eventList, .eventDetail, .eventDate:
            return .get
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case .eventList, .eventDetail, .eventDate:
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        case .eventList, .eventDetail, .eventDate:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .eventList, .eventDetail:
            return [
                401: .unauthorized,
                404: .notFound
            ]
            
        case .eventDate:
            return [
                401: .unauthorized
            ]
        }
    }
}
