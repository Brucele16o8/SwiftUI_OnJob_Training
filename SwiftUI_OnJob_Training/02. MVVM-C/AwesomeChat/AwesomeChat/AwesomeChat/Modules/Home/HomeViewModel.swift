//
//  Untitled.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation
import Domain

final class HomeViewModel: ObservableObject {
  @Published private(set) var currentUser: User?
  private let homeUseCase: Domain.HomeUseCase
  
  init(homeUseCase: Domain.HomeUseCase) {
    currentUser = UserDefaults.standard.loadUserDetails()
    self.homeUseCase = homeUseCase
  }
  
  func logOut() {
    UserDefaults.standard.removeUserDetails()
    AuthenticationService.shared.status = .unauthenticated
  }
}
