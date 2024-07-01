import Foundation

public protocol FetchMyInfoUseCase {
    func execute() async throws -> MyInfoEntity
}

