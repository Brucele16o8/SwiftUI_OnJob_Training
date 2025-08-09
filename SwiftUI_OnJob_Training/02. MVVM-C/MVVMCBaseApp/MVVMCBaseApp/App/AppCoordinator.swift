//
//  AppCoordinator.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import Foundation
import Stinsen

final class AppCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<AppCoordinator> = NavigationStack(initial: \AppCoordinator.makeHome)
  @Root var makeHome = makeHomeCoordinator
}

extension AppCoordinator {
  func makeHomeCoordinator() -> NavigationViewCoordinator<HomeCoordinator> {
    return NavigationViewCoordinator(HomeCoordinator())
  }
}
