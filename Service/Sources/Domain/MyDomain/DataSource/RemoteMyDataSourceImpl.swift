import Foundation

public final class RemoteMyDataSourceImpl: BaseRemoteDataSource<MyAPI>, RemoteMyDataSource {
    public func fetchMyInfo() async throws -> MyInfoEntity {
        try await request(.fetchMyInfo, dto: FetchMyInfoResponseDTO.self)
            .toDomain()
    }
    
    public func fetchMyBookList() async throws -> MyBookListEntity {
        try await request(.fetchMyBookList, dto: FetchMyBookListResponseDTO.self)
            .toDomain()
    }
}
