//
//  SearchCoordinator.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Stinsen
import SwiftUI

final class SearchCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<SearchCoordinator> = NavigationStack(initial: \SearchCoordinator.start)
  
  @Root var start = makeStart
  
  func makeStart() -> some View {
    SearchView(searchViewModel: SearchViewModel())
  }
}
