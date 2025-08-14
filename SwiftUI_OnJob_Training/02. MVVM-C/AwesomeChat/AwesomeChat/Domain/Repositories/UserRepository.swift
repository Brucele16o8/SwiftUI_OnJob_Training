//
//  UserRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation

public protocol UserRepository {
  func fetchUser() async throws -> any UserEntity
}
