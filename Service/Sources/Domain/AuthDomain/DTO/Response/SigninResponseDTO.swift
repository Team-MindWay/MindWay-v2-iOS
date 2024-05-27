import Foundation

struct SigninResponseDTO: Decodable {
    let userAuthority: UserAuthorityType
}

extension SigninResponseDTO {
    func toDomain() -> UserSignupInfoEntity {
        UserSignupInfoEntity(authority: userAuthority)
    }
}
