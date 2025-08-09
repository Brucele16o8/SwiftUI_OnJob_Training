//
//  DetailView.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct DetailView: View {
  @StateObject var viewModel: DetailViewModel
  
  var body: some View {
    VStack {
      Text(viewModel.message)
      
      Button {
        viewModel.onBack()
      } label: {
        Text("Back")
      }
    }
  }
}

#Preview {
  DetailView(viewModel: .init(message: "Hello, DetailView!"))
}
