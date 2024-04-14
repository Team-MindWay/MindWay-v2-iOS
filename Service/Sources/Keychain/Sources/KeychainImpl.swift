import Foundation

public struct KeychainImpl: Keychain {
    public init() {}

    public func save(type: KeychainType, value: String) {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: type.rawValue,
            kSecValueData: value.data(using: .utf8, allowLossyConversion: false) ?? .init(),
        ]
        SecItemDelete(query)
        SecItemAdd(query, nil)
    }

    public func load(type: KeychainType) -> String {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: type.rawValue,
            kSecReturnData: kCFBooleanTrue!,
            kSecMatchLimit: kSecMatchLimitOne,
        ]
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)
        if status == errSecSuccess {
            guard let data = dataTypeRef as? Data else { return "" }
            return String(data: data, encoding: .utf8) ?? ""
        }
        return ""
    }

    public func delete(type: KeychainType) {
        let query: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrAccount: type.rawValue,
        ]
        SecItemDelete(query)
    }
}
