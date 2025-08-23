//
//  ProfileView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import SwiftUI

struct ProfileView: View {
  @StateObject var viewModel: ProfileViewModel
  
  var body: some View {
    Text("Profile View")
  }
}

#Preview {
  ProfileView(viewModel: ProfileViewModel())
}
