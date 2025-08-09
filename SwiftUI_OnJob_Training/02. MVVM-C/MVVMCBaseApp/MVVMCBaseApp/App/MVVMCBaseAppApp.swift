//
//  MVVMCBaseAppApp.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import SwiftUI

@main
struct MVVMCBaseAppApp: App {
  @State var coordinator = AppCoordinator()
  
  var body: some Scene {
    WindowGroup {
      coordinator.view()
    }
  }
}
