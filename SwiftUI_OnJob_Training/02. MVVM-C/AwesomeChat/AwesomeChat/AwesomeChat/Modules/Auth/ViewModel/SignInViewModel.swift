//
//  SignInViewModel.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation
import Stinsen
import Combine

final class SignInViewModel: ObservableObject {
  @RouterObject var router: AuthCoordinator.Router?
  @Published var email: String = ""
  @Published var password: String = ""
  @Published var isFormValid: Bool = false
  
  private var subscriptions = Set<AnyCancellable>()
  /// --- Publishers
  var isUserEmailValidPublisher: AnyPublisher<Bool, Never> {
    $email
      .map { self.isValidEmail($0) }
      .eraseToAnyPublisher()
  }
  var isUserPasswordValidPublisher: AnyPublisher<Bool, Never> {
    $password
      .map { self.isValidPassword($0) }
      .eraseToAnyPublisher()
  }
  
  var isSignInFromValidPulisher: AnyPublisher<Bool, Never> {
    Publishers.CombineLatest(isUserEmailValidPublisher, isUserPasswordValidPublisher)
      .map { $0 && $1 }
      .eraseToAnyPublisher()
  }
  
  init() {
    start()
  }
  
  func start() {
    isSignInFromValidPulisher
      .receive(on: DispatchQueue.main)
      .assign(to: &$isFormValid)
  }
  
  // MARK: -- Validation
  
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
  
  
  
  // MARK: -- Navigation
  
  func navigateToHome() {
    /// TODO: - update code later
    
    /// navigate directly to the HomeScreen for now
    let user = User(id: UUID(), userName: email, email: email, password: password)
    AuthenticationService.shared.status = .authenticated(user)
  }
  
  func navigateToSignUp() {
    /// navigate directly to the Sign Up
    router?.route(to: \.pushToSignUp)
  }
  
} /// 🧱


