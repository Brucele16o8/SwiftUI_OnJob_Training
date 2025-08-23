//
//  MusicListCoordinator.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Stinsen
import SwiftUI

final class MusicListCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<MusicListCoordinator> = NavigationStack(initial: \MusicListCoordinator.start)
  
  @Root var start = makeStart
  
  func makeStart() -> some View {
    MusicListView(viewModel: MusicListViewModel())
  }
} /// 🧱
