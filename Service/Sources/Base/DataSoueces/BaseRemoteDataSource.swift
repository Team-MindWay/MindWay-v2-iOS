import Foundation
import Moya

open class BaseRemoteDataSource<API: MindWayAPI> {
    private let keychain: any Keychain
    private let provider: MoyaProvider<API>
    private let decoder = JSONDecoder()
    private let maxRetryCount = 2

    public init(
        keychain: any Keychain,
        provider: MoyaProvider<API>? = nil
    ) {
        self.keychain = keychain

        #if DEV || STAGE
        self.provider = provider ?? MoyaProvider(plugins: [JwtPlugin(keychain: keychain), MoyaLoggingPlugin()])
        #else
        self.provider = provider ?? MoyaProvider(plugins: [JwtPlugin(keychain: keychain)])
        #endif
    }

    public func request<T: Decodable>(_ api: API, dto: T.Type) async throws -> T {
        let response = try await retryingRequest(api)
        return try decoder.decode(dto, from: response.data)
    }

    private func requestPublisher(_ api: API) async throws -> Response {
        try await withCheckedThrowingContinuation { continuation in
            self.provider.request(api) { result in
                switch result {
                case .success(let response):
                    continuation.resume(returning: response)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    private func retryingRequest(_ api: API) async throws -> Response {
        for _ in 0..<maxRetryCount {
            do {
                return try await requestPublisher(api)
            } catch {
                let oneSecond = TimeInterval(1_000_000_000)
                let delay = UInt64(oneSecond * 0.5)
                try await _Concurrency.Task<Never, Never>.sleep(nanoseconds: delay)
                continue
            }
        }
        throw MyError.tooManyRetries
    }

    enum MyError: Error {
        case tooManyRetries
    }
}
