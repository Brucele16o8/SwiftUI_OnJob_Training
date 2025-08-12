//
//  User.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation

struct User: Codable, Equatable {
  let id: UUID
  let userName: String
  let email: String
  let password: String
}
