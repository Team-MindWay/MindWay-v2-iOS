public protocol SigninStateProtocol {
    var isError: Bool { get }
    var isSuccess: Bool { get }
}

public protocol SigninActionProtocol: AnyObject {
    func updateIsError(isError: Bool)
    func updateIsSuccess(isSuccess: Bool)
}
