import Foundation

public protocol FetchNoticeUseCase {
    func execute() async throws -> FetchNoticeEntity
}
