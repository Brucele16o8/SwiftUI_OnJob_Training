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
    VStack {
      Text("Hello, HomeView")
      if let user = viewModel.currentUser {
        Text("\(user.id)")
        Text("\(user.email)")
        Text("\(user.password)")
      }
      
      PrimaryButton(title: "Log Out") {
        viewModel.logOut()
      }
    }
  }
}
//
//#Preview {
//  HomeView(viewModel: HomeViewModel(homeUseCase: <#T##any HomeUseCase#>))
//}
