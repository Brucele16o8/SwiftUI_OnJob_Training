//
//  UseCaseProvider.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation
import Domain

public class UseCaseProvider {
  
  public static func makeHomeUseCase() -> Domain.HomeUseCase {
    let userRepository: Domain.UserRepository
    
    switch AppConfig.shared.configuration {
    case .mock:
      userRepository = MockUserRepository()
    default:
      userRepository = UserRepository()
    }
    
    return HomeUseCase(userRepository: userRepository)
  }
} /// 🧱
