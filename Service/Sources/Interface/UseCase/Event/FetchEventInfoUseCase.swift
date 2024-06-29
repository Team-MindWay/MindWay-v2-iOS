import Foundation

public protocol FetchEventInfoUseCase {
    func execute() async throws -> [EventInfoEntity]
}
