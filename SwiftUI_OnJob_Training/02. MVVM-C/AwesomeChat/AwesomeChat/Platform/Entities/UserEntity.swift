//
//  UserEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation
import Domain

struct UserEntity: Domain.UserEntity {
  let id: String
  let userName: String
  let email: String
  let password: String
  let gender: String?
  let phoneNumber: String?
}

// =====
extension UserEntity {
  static func mockEntity() -> UserEntity {
    return UserEntity(id: "123",
                      userName: "Mark Swift",
                      email: "markswift@gmail.com",
                      password: "123456",
                      gender: "Male",
                      phoneNumber: "+14562578901")
  }
  
  static func entity() -> UserEntity {
    return UserEntity(id: "123",
                      userName: "Mark Swift",x
                      email: "markswift@gmail.com",
                      password: "123456",
                      gender: "Male",
                      phoneNumber: "+14862578999")
  }
  
} /// 🧱
