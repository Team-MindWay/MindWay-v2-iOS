import Foundation

public protocol AdminRepository {
    func fetchRank() async throws
}
