//
//  SignInViewModel.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation
import Stinsen

final class SignInViewModel: ObservableObject {
  @RouterObject var router: AppCoordinator.Router?
  @Published var email: String = ""
  @Published var password: String = ""
  var isValidLoginForm: Bool {
    isValidEmail(email) && isValidPassword(password)
  }
  
  // MARK: - Validation
  
  private func isValidEmail(_ email: String) -> Bool {
    // Basic email pattern
    let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
    return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
  }
  
  private func isValidPassword(_ password: String) -> Bool {
    // At least 8 characters, 1 uppercase, 1 symbol
    let passwordRegex = #"^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$"#
    return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
  }
  
  // MARK: - Navigation
  func navigateToSignUp() {
//    router?.route(to: )
  }
}
