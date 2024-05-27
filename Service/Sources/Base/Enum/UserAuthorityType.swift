import Foundation

public enum UserAuthorityType: String, CaseIterable, Decodable, Encodable {
    case student = "ROLE_STUDENT"
    case teacher = "ROLE_TEACHER"
    case helper = "ROLE_HELPER"
}
