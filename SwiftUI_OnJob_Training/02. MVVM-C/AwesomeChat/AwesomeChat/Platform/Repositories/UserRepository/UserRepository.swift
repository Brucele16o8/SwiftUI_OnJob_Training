//
//  UserRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation
import Domain

final class UserRepository: Domain.UserRepository {
  func fetchUser() async throws -> any Domain.UserEntity {
    try? await  Task.sleep(nanoseconds: 2_000_000)
    return UserEntity.entity()
  }
  
} /// 🧱
