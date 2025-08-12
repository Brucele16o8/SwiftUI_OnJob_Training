//
//  ContentView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI
import Stinsen
import Combine

final class AppCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<AppCoordinator> = NavigationStack(initial: \AppCoordinator.splash)
  @Root var splash = makeSplash
  @Root var unauthenticated = makeUnauthenticated
  @Root var authenticated = makeAuthenticated
  
  var subscription = Set<AnyCancellable>()
  
//  @ViewBuilder
//  func sharedView(_ view: AnyView) -> some View {
//    view
//      .onReceive(AuthenticationService.shared.$status) { status in
//        switch status {
//        case .unauthenticated:
//          self.root(\.unauthenticated)
//        case .authenticated:
//          self.root(\.authenticated)
//        }
//      }
//  }
  
//  /// Override the optional customise method of the Stinsen
//  @ViewBuilder
//  func customize(_ view: AnyView) -> some View {
//    sharedView(view)
//  }
  
  
  /// ** Initialisation
  init() {
    AuthenticationService.shared.$status
      .dropFirst()
      .receive(on: DispatchQueue.main)
      .sink { [weak self] status in
        switch status {
        case .unauthenticated:
          self?.root(\.unauthenticated)
        case .authenticated:
          self?.root(\.authenticated)
        }
      }
      .store(in: &subscription)
  }
} /// 🧱

extension AppCoordinator {
  @ViewBuilder
  func makeSplash() -> some View {
    SplashScreen {
      DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
        switch AuthenticationService.shared.status {
        case .unauthenticated:
          self.root(\.unauthenticated)
        case .authenticated:
          self.root(\.authenticated)
        }
      }
    }
  }
  
  func makeUnauthenticated() -> NavigationViewCoordinator<AuthCoordinator> {
    return NavigationViewCoordinator(AuthCoordinator())
  }
  
  func makeAuthenticated() -> HomeCoordinator {
    return HomeCoordinator()
  }
}
