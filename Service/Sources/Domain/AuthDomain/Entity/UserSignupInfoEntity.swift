import Foundation

public struct UserSignupInfoEntity {
    public let authority: UserAuthorityType

    public init(authority: UserAuthorityType) {
        self.authority = authority
    }
}
