//
//  ProfileCoordinator.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Stinsen
import SwiftUI

final class ProfileCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<ProfileCoordinator> = NavigationStack(initial: \ProfileCoordinator.start)
  
  @Root var start = makeStart
  
  func makeStart() -> some View {
    ProfileView(viewModel: ProfileViewModel())
  }
  
} /// 🧱
