//
//  AuthCoordinator.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Stinsen
import SwiftUI

final class AuthCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<AuthCoordinator> = NavigationStack(initial: \.start)
  
  @Root var start = makeStart
  @Route(.push) var pushToSignUp = makeSignUp
  
  func makeStart() -> some View {
    return SignInView(viewModel: SignInViewModel())
  }
  
  func makeSignUp() -> some View {
    return SignUpView(viewModel: SignUpViewModel())
  }

} /// 🧱
