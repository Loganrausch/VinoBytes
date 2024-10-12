//
//  Keychain Helper.swift
//  VinoBytes
//
//  Created by Logan Rausch on 10/6/24.
//

import Foundation
import Security

struct KeychainHelper {
    static func save(_ data: String, forKey key: String) throws {
        guard let data = data.data(using: .utf8) else {
            throw KeychainError.invalidData
        }

        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ]

        // Delete any existing items
        SecItemDelete(query as CFDictionary)

        // Add new item
        let status = SecItemAdd(query as CFDictionary, nil)
        guard status == errSecSuccess else {
            throw KeychainError.unhandledError(status: status)
        }
    }

    static func retrieve(forKey key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String       : kSecClassGenericPassword,
            kSecAttrAccount as String : key,
            kSecReturnData as String  : kCFBooleanTrue!,
            kSecMatchLimit as String  : kSecMatchLimitOne
        ]

        var dataTypeRef: AnyObject? = nil

        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)

        if status == errSecSuccess, let data = dataTypeRef as? Data, let string = String(data: data, encoding: .utf8) {
            return string
        }

        return nil
    }

    static func delete(forKey key: String) {
        let query: [String: Any] = [
            kSecClass as String       : kSecClassGenericPassword,
            kSecAttrAccount as String : key
        ]

        SecItemDelete(query as CFDictionary)
    }
}

enum KeychainError: Error {
    case invalidData
    case unhandledError(status: OSStatus)
}
