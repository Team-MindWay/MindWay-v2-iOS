import Foundation
import Moya

public enum BookAPI {
    case writeBook(req: BookInfoRequestDTO)
    case bookList
    case bookDetail(book_id: Int)
    case modifyBook(book_id: Int, req: BookInfoRequestDTO)
    case deleteBook(book_id: Int)
}

extension BookAPI: MindWayAPI {
    public typealias ErrorType = BookDomainError
    
    public var domain: MindWayDomain {
        .book
    }
    
    public var urlPath: String {
        switch self {
        case .writeBook, .bookList:
            return ""
        case let .bookDetail(book_id),
             let .modifyBook(book_id, _),
             let .deleteBook(book_id):
            return "/\(book_id)"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .bookList, .bookDetail:
            return .get
        case .writeBook:
            return .post
        case .modifyBook:
            return .patch
        case .deleteBook:
            return .delete
        }
    }
    
    public var task: Moya.Task {
        switch self {
        case let .writeBook(req):
            return .requestJSONEncodable(req)
        case let .modifyBook(_, req):
            return .requestJSONEncodable(req)
        case .bookList, .bookDetail, .deleteBook:
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
        default:
            return [
                401: .unauthorized
            ]
        }
    }
}
