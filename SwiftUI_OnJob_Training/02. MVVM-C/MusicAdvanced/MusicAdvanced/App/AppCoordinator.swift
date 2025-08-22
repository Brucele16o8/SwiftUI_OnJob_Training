//
//  ContentView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 22/8/2025.
//

import SwiftUI
import Stinsen

final class AppCoordinator: NavigationCoordinatable {
  var stack: Stinsen.NavigationStack<AppCoordinator> = NavigationStack(initial: \AppCoordinator.start)
  
}
