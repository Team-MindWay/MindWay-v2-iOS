import Foundation

public struct FetchMyBookListUseCaseImpl: FetchMyBookListUseCase {
    private let myRepository: any MyRepository

    public init(myRepository: any MyRepository) {
        self.myRepository = myRepository
    }

    public func execute() async throws -> MyBookListEntity {
        try await myRepository.fetchMyBookList()
    }
}
