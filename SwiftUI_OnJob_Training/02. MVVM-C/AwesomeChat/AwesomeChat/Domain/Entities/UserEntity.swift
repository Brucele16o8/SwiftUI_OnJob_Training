//
//  UserEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation


public protocol UserEntity: Identifiable, Codable {
  var id: String { get set }
  var userName: String { get set }
  var email: String { get set }
  var password: String { get set }

}
