//
//  ContentView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI
import Stinsen

final class AppCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<AppCoordinator>
  @Root var unauthenticated = makeUnauthenticated
  @Root var authenticated = makeAuthenticated
  
  @ViewBuilder
  func SharedView(_ view: AnyView) -> some View {
    view
      .onReceive(AuthenticationService.shared.$status) { status in
        switch status {
        case .unauthenticated:
          self.root(\.unauthenticated)
        case .authenticated:
          self.root(\.authenticated)
        }
      }
  }
  
  init() {
    switch AuthenticationService.shared.status {
    case .authenticated:
      stack = NavigationStack(initial: \AppCoordinator.authenticated)
    case .unauthenticated:
      stack = NavigationStack(initial: \AppCoordinator.unauthenticated)
    }
  }
} /// 🧱

extension AppCoordinator {
  func makeUnauthenticated() -> NavigationViewCoordinator<AuthCoordinator> {
    return NavigationViewCoordinator(AuthCoordinator())
  }
  
  func makeAuthenticated() -> HomeCoordinator {
    return HomeCoordinator()
  }
}
