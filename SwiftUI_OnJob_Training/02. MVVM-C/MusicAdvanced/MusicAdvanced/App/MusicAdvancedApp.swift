//
//  MusicAdvancedApp.swift
//  MusicAdvanced
//
//  Created by Tung Le on 22/8/2025.
//

import SwiftUI
import Stinsen

@main
struct MusicAdvancedApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationViewCoordinator(AppCoordinator())
        .view()
    }
  }
}
