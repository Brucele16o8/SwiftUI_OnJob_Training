//
//  SignInView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct SignInView: View {
  @StateObject var viewModel = SignInViewModel()
  
  var body: some View {
    VStack(alignment: .leading) {
      Spacer()
      
      /// --- Icon
      Image("app-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 164, height: 164)
        .shadow(radius: 6, x: 0, y: 6)
      
      Text("Experience Awesome Chat")
        .font(.custom("Lato-Thin", size: 26))
        .padding(.bottom)
      
      Text("Sign in")
        .font(.custom("Lato-Regular", size: 25))
      
      Spacer()
        .frame(height: 32)
      
      TextFieldFormGeneralStyle(
        title: "EMAIL",
        placeholder: "yourname@gmail.com",
        text: $viewModel.email,
        iconName: "envelope")
      
      Spacer()
        .frame(height: 32)
      
      TextFieldFormPassword(
        title: "PASSWORD",
        placeholder: "*******",
        bindingPassword: $viewModel.password
      )
      
      Spacer()
      PrimaryButton(
        title: "Sign in",
        isDisabled: !viewModel.isValidLoginForm,
        action: {
          
        }
      )
      Spacer()
    }
    .padding(24)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
  }
}

#Preview {
  SignInView()
}
