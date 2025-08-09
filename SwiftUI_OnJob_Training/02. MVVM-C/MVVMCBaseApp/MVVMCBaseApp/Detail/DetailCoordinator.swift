//
//  DetailCoordinator.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import SwiftUI
import Stinsen

final class DetailCoordinator: NavigationCoordinatable {
  var stack = NavigationStack(initial: \DetailCoordinator.start)
  
  @Root var start = makeStart
}

extension DetailCoordinator {
  func makeStart(message: String) -> some View {
    return DetailView(viewModel: DetailViewModel(message: message))
  }
}
