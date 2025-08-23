//
//  HomeView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import SwiftUI
import Platform

struct HomeView: View {
  @StateObject var viewModel: HomeViewModel
  
  var body: some View {
    Text("Home View")
  }
}

#Preview {
  let homeUseCase = UseCaseProvider.makeHomeUseCase()
  HomeView(viewModel: HomeViewModel(homeUseCase: homeUseCase))
}
