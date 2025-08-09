//
//  UnauthenticatedCoordinator.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import Foundation
import Stinsen
import SwiftUI

final class UnauthenticatedCoordinator: NavigationCoordinatable {
  let stack = NavigationStack(initial: \UnauthenticatedCoordinator.start)
  
  @Root var start = makeStart
  @Route(.modal) var forgotPassword = makeForgotPassword
  @Route(.push) var registration = makeRegistration
  
  
  @ViewBuilder
  func makeForgotPassword() -> some View {
    Text("Forgot Password")
  }
  
  @ViewBuilder
  func makeRegistration() -> some View {
    Text("Registration")
  }
  
  
  @ViewBuilder
  func makeStart() -> some View {
    Text("Root View")
  }
} // 🧱
