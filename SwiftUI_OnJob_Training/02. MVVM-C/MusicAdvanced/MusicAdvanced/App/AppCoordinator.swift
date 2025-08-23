//
//  ContentView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 22/8/2025.
//

import SwiftUI
import Stinsen

final class AppCoordinator: TabCoordinatable {
  var child = TabChild(
    startingItems: [
      \AppCoordinator.home,
      \AppCoordinator.search,
       \AppCoordinator.list,
       \AppCoordinator.profile
    ]
  )
  
  @Route(tabItem: makeHomeTab) var home = makeHome
  @Route(tabItem: makeSearchTab) var search = makeSearch
  @Route(tabItem: makePlayListTab) var list = makePlayList
  @Route(tabItem: makeProfileTab) var profile = makeProfile
}


extension AppCoordinator {
  /// Home Tab
  func makeHome() -> HomeCoordinator {
    HomeCoordinator()
  }

  @ViewBuilder
  func makeHomeTab(isActive: Bool) -> some View {
    Image(systemName: "house" + (isActive ? ".fill" : ""))
    Text("Home")
  }
  
  /// Search Tab
  func makeSearch() -> SearchCoordinator {
    SearchCoordinator()
  }
  
  @ViewBuilder
  func makeSearchTab(isActive: Bool) -> some View {
    Image(systemName: "magnifyingglass" + (isActive ? ".fill" : ""))
    Text("Search")
  }
  
  /// Play List Tab
  func makePlayList() -> MusicListCoordinator {
    MusicListCoordinator()
  }
  
  @ViewBuilder
  func makePlayListTab(isActive: Bool) -> some View {
    Image(systemName: "music.note.list" + (isActive ? ".fill" : ""))
    Text("Music List")
  }
  
  /// Profile Tab
  func makeProfile() -> ProfileCoordinator {
    ProfileCoordinator()
  }
  
  @ViewBuilder
  func makeProfileTab(isActive: Bool) -> some View {
    Image(systemName: "person.circle" + (isActive ? ".fill" : ""))
    Text("Profile")
  }
  
} /// 🧱
