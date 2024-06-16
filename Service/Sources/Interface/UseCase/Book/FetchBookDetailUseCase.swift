import Foundation

public protocol FetchBookDetailUseCase {
    func execute() async throws -> [BookDetialInfoEntity]
}
