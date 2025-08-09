//
//  HomeCoordinator.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import Stinsen
import SwiftUI

final class HomeCoordinator: NavigationCoordinatable {
  let stack = NavigationStack(initial: \HomeCoordinator.start)
  
  @Root var start = makeStart
  @Route(.fullScreen) var pushToDetail = makeDetail
}

extension HomeCoordinator {
  
  @ViewBuilder
  func makeStart() -> some View {
    HomeView()
  }
  
  @ViewBuilder
  func makeDetail(message: String) -> some View {
    DetailCoordinator().makeStart(message: message)
  }
}
