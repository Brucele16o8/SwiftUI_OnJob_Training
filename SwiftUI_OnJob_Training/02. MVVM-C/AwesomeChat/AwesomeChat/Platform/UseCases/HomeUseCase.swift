//
//  HomeUseCase.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation
import Domain

final class HomeUseCase: Domain.HomeUseCase {
  private let userRepository: Domain.UserRepository
  
  init(userRepository: Domain.UserRepository) {
    self.userRepository = userRepository
  }
  
  func fetchUser() async throws -> any Domain.UserEntity {
    try await userRepository.fetchUser()
  }

} /// 🧱
