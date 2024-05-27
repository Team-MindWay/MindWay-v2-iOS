import Foundation

public enum AuthDomainError: Error {
    case unauthorized
    case notFound
    case internalServerError
}
