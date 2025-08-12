//
//  Auth.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation

class AuthenticationService: ObservableObject {
  
  // MARK: - Types
  enum Status: Equatable {
    case authenticated(User)
    case unauthenticated
  }
  
  static var shared: AuthenticationService = AuthenticationService()
  
  @Published var status: Status {
    didSet {
      switch status {
      case .unauthenticated:
        UserDefaults.standard.removeUserDetails()
      case .authenticated(let user):
        try! UserDefaults.standard.saveUserDetails(user)
      }
    }
  }
  
  
  /// ** Identify the value for Status when laucnhing
  init() {
    if let user = UserDefaults.standard.loadUserDetails() {
      self.status = .authenticated(user)
    } else {
      self.status = .unauthenticated
    }
  }
  
} /// 🧱
