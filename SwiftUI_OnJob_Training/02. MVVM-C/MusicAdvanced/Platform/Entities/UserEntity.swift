//
//  UserEntity.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

struct UserEntity: Domain.UserEntity {
  let id: Int
  let name: String
}

extension UserEntity {
  static var userMock1 = UserEntity(id: 1, name: "Mark")
}
