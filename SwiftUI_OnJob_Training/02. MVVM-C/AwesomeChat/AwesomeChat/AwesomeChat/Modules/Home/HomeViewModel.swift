//
//  Untitled.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation

final class HomeViewModel: ObservableObject {
  @Published private(set) var currentUser: User?
  
  init() {
    currentUser = UserDefaults.standard.loadUserDetails()
  }
  
  func logOut() {
    UserDefaults.standard.removeUserDetails()
    AuthenticationService.shared.status = .unauthenticated
  }
}
