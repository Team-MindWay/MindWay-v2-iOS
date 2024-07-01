import Foundation

public struct MyRepositoryImpl: MyRepository {
    private let remoteMyDataSource: any RemoteMyDataSource

    public init(
        remoteMyDataSource: any RemoteMyDataSource
    ) {
        self.remoteMyDataSource = remoteMyDataSource
    }
    
    public func fetchMyInfo() async throws -> MyInfoEntity {
        try await remoteMyDataSource.fetchMyInfo()
    }
    
    public func fetchMyBookList() async throws -> MyBookListEntity {
        try await remoteMyDataSource.fetchMyBookList()
    }
}

