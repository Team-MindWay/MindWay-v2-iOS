import Foundation

public struct RankInfoEntity: Equatable {
    public let username: String
    public let accrue: Int

    public init(
        username: String,
        accrue: Int
    ) {
        self.username = username
        self.accrue = accrue
    }
}
