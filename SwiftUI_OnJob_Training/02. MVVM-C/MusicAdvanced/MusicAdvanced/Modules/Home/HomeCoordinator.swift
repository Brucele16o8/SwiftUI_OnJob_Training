//
//  HomeCoordinator.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Platform
import SwiftUI
import Stinsen

final class HomeCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<HomeCoordinator> = NavigationStack(initial: \HomeCoordinator.start)
  
  @Root var start = makeStart
  
  func makeStart() -> some View {
    let homeUseCase = UseCaseProvider.makeHomeUseCase()
    return HomeView(viewModel: HomeViewModel(homeUseCase: homeUseCase))
  }
}
