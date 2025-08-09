//
//  SignUpView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct SignUpView: View {
  @StateObject var viewModel = SignUpViewModel()
  
  var body: some View {
    Text("Sign Up")
  }
}

#Preview {
  SignUpView()
}
