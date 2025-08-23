//
//  UserRepository.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

final class UserRepository: Domain.UserRepository {
  func getUser() -> any Domain.UserEntity {
    /// implementation, such calling services or APIs
    return UserEntity.userMock1
  }
  
} /// 🧱
