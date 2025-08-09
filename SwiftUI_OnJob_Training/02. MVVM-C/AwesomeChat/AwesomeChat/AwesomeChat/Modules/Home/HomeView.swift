//
//  HomeView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct HomeView: View {
  @StateObject var viewModel: HomeViewModel
  
  var body: some View {
    Text("Hello, Home View!")
  }
}

#Preview {
  HomeView(viewModel: HomeViewModel())
}
