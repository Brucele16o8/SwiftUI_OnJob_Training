//
//  UserEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation
import Domain

struct UserEntity: Domain.UserEntity {
  var id: String
  var userName: String
  var email: String
  var password: String
}

// =====
extension UserEntity {
  static func mockEntity() -> UserEntity {
    return UserEntity(id: "123",
                      userName: "Mark Swift",
                      email: "markswift@gmail.com",
                      password: "123456")
  }
  
  static func entity() -> UserEntity {
    return UserEntity(id: "123",
                      userName: "Mark Swift",
                      email: "markswift@gmail.com",
                      password: "123456")
  }
  
} /// 🧱
