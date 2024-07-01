import Foundation

public struct FetchMyInfoUseCaseImpl: FetchMyInfoUseCase {
    private let myRepository: any MyRepository

    public init(myRepository: any MyRepository) {
        self.myRepository = myRepository
    }

    public func execute() async throws -> MyInfoEntity {
        try await myRepository.fetchMyInfo()
    }
}
