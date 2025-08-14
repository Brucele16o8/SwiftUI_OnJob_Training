//
//  MockUserRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Domain

final class MockUserRepository: Domain.UserRepository {
  func fetchUser() async throws -> any Domain.UserEntity {
    return UserEntity.mockEntity()
  }
  
} /// 🧱
