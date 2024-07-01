import Foundation

public struct RecommendBookRepositoryImpl: RecommendRepository {
    private let remoteRecommendDataSource: any RemoteRecommendDataSource

    public init(
        remoteRecommendDataSource: any RemoteRecommendDataSource
    ) {
        self.remoteRecommendDataSource = remoteRecommendDataSource
    }
    
    public func fetchMyInfo(param: String) async throws -> MyInfoEntity {
        try await remoteRecommendDataSource.fetchRecommendBook(params: param)
    }
    
    public func fetchMyBookList() async throws -> RecommendBookEntity {
        try await remoteRecommendDataSource.fetchRecommendBook
    }
}

