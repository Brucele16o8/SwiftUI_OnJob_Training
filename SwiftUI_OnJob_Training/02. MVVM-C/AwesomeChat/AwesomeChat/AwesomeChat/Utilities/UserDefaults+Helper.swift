//
//  UserDefault+Helper.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation

extension UserDefaults {
  
  // MARK: - Types
  private enum Keys {
    static let userDetails = "userDetails"
  }
  
  /// ✅
  func saveUserDetails(_ user: User) throws {
    try encode(user, forKey: Keys.userDetails)
  }
  
  func loadUserDetails() -> User? {
    return decode(User.self, forKey: Keys.userDetails)
  }
  
  func removeUserDetails() {
    removeObject(forKey: Keys.userDetails)
  }
  
} /// 🧱


// ===== Helpers
fileprivate extension UserDefaults {
  /// -----
  func decode<T: Decodable>(_ type: T.Type, forKey key: String) -> T? {
    guard let data = data(forKey: key) else { return nil}
    return try? JSONDecoder().decode(T.self, from: data)
  }
  
  /// -----
  func encode<T: Encodable>(_ value: T, forKey key: String) throws {
    let data = try JSONEncoder().encode(value)
    set(data, forKey: key)
  }
}
