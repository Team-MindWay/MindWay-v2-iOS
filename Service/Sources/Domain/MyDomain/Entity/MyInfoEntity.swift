import Foundation

public struct MyInfoEntity: Equatable {
    public let name: String
    public let authority: String
    

    public init(
        name: String,
        authority: String
    ) {
        self.name = name
        self.authority = authority
    }
}
