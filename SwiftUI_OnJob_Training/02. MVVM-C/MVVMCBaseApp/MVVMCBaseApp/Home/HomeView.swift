//
//  Homeview.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import SwiftUI

struct HomeView: View {
  @State var viewModel: HomeViewModel = .init()
  
  var body: some View {
    VStack {
      Text("HomeView")
      Button("Go to Detail") {
        viewModel.didSelectDetail(message: "Detail Screen")
      }
    }
  }
}

#Preview {
  HomeView()
}
