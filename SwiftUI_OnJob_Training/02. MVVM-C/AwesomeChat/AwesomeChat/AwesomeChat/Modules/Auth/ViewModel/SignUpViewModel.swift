//
//  SignUpViewModel.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation
import Combine
import Stinsen

final class SignUpViewModel: ObservableObject {
  @RouterObject var router: AuthCoordinator.Router?
  @Published var username: String = ""
  @Published var email: String = ""
  @Published var password: String = ""
  @Published var agreeToTerms: Bool = false
  @Published var isFormValid: Bool = false
  
  private var subscriptions = Set<AnyCancellable>()
  /// --- Publishers
  var isAgreeToTermsPublisher: AnyPublisher<Bool, Never> {
    $agreeToTerms
      .eraseToAnyPublisher()
  }
  var isUserNameValidPublisher: AnyPublisher<Bool, Never> {
    $username
      .removeDuplicates()
      .map { !$0.isEmpty }
      .eraseToAnyPublisher()
  }
  var isUserEmailValidPublisher: AnyPublisher<Bool, Never> {
    $email
      .removeDuplicates()
      .map { self.isValidEmail($0) }
      .eraseToAnyPublisher()
  }
  var isUserPasswordValidPublisher: AnyPublisher<Bool, Never> {
    $password
      .removeDuplicates()
      .map { self.isValidPassword($0) }
      .eraseToAnyPublisher()
  }
  
  var isSignInFromValidPulisher: AnyPublisher<Bool, Never> {
    Publishers.CombineLatest4(isUserEmailValidPublisher,
                              isUserPasswordValidPublisher,
                              isUserNameValidPublisher,
                              isAgreeToTermsPublisher)
      .map { $0 && $1 && $2 && $3}
      .eraseToAnyPublisher()
  }
  
  init() {
    start()
  }
  
  func start() {
    isSignInFromValidPulisher
      .debounce(for: .milliseconds(200), scheduler: DispatchQueue.main)
      .receive(on: DispatchQueue.main)
      .assign(to: &$isFormValid)
  }
  
  // MARK: -- Validation
  
  private func isValidEmail(_ email: String) -> Bool {
    /// Basic email pattern
    let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
    return NSPredicate(format: "SELF MATCHES %@",
                       emailRegex).evaluate(with: email)
  }
  
  private func isValidPassword(_ password: String) -> Bool {
    /// At least 8 characters, 1 uppercase, 1 symbol
    let passwordRegex = #"^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$"#
    return NSPredicate(format: "SELF MATCHES %@",
                       passwordRegex).evaluate(with: password)
  }
  
  // MARK: -- Navigation
  
  func navigateToSignIn() {
    /// navigate directly to the Sign Up
    router?.popLast()
  }
  
}
