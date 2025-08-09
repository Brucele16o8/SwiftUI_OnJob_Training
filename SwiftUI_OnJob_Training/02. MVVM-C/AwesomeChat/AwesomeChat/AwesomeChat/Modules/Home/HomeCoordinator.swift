//
//  HomeCoordinator.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import Stinsen
import SwiftUI

final class HomeCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<HomeCoordinator> = NavigationStack(initial: \.start)
  
  @Root var start = makeStart
  
  func makeStart() -> some View {
    return HomeView(viewModel: HomeViewModel())
  }
} /// ✅
