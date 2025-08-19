//
//  MockUserRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Domain

final class MockUserRepository: Domain.UserRepository {
  func fetchUser() async throws -> any Domain.UserEntity {
    try await Task.sleep(nanoseconds: 2_000_000_000) /// delay 2 seconds for API calling simulation
    return UserEntity.mockEntity()
  }
  
} /// 🧱
