//
//  AwesomeChatApp.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI
import Stinsen

@main
struct AwesomeChatApp: App {
  var body: some Scene {
    WindowGroup {
      AppCoordinator()
        .view() 
    }
  }
}
