import Foundation
import Moya

public enum OrderAPI {
    case orderBook(req: OrderBookRequestDTO)
    case updateOrder(orderID: String, req: UpdateBookRequestDTO)
    case deleteOrder(orderID: String)
}

extension OrderAPI: MindWayAPI {
    public typealias ErrorType = OrderDomainError
    
    public var domain: MindWayDomain {
        .order
    }
    
    public var urlPath: String {
        switch self {
        case .orderBook:
            return ""
            
        case let .updateOrder(orderID, _):
            return "\(orderID)"
            
        case let .deleteOrder(orderID):
            return "\(orderID)"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .orderBook:
            return .post
            
        case .updateOrder:
            return .patch
            
        case .deleteOrder:
            return .delete
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case let .orderBook(req):
            return .requestJSONEncodable(req)
            
        case let .updateOrder(_, req):
            return .requestJSONEncodable(req)
            
        case let .deleteOrder(orderID: orderID):
            return .requestPlain
        }
    }
    
    public var jwtTokenType: JwtTokenType {
        switch self {
        default:
            return .accessToken
        }
    }
    
    public var errorMap: [Int: ErrorType] {
        switch self {
        case .orderBook:
            return [
                400: .badRequest,
                401: .unauthorized
            ]
            
        case .updateOrder, .deleteOrder:
            return [
                401: .unauthorized,
                403: .forBidden,
                404: .notFound
            ]
        }
    }
}
