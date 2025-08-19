//
//  UserEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation


public protocol UserEntity: Identifiable, Codable {
  var id: String { get }
  var userName: String { get }
  var email: String { get }
  var password: String { get }
  var gender: String? { get }
  var phoneNumber: String? { get }
}
