import Foundation

public protocol RemoteRankDataSource {
    func fetchRankInfo() async throws
}
