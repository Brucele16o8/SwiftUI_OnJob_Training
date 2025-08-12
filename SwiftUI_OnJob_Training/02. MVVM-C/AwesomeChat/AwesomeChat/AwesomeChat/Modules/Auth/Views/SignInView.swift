//
//  SignInView.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI
import Stinsen

struct SignInView: View {
  @StateObject var viewModel = SignInViewModel()
  
  var body: some View {
    VStack(alignment: .leading) {
      Spacer()
      
      /// --- Icon
      Image("app-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 124, height: 124)
        .shadow(radius: 6, x: 0, y: 6)
      
      Text("Experience Awesome Chat")
        .font(.custom("Lato-Thin", size: 26))
        .padding(.bottom)
      
      /// First Sign in button
      ClickableText(title: "Sign in",fontName: "Lato-Regular", fontSize: 25) {
        /// do nothing for now
      }
      
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
      
      
      /// --- Forgot password
      HStack {
        Spacer()
        ClickableText(title: "Forgot password?",fontName: "Lato-Regular", fontSize: 14) {
          /// route to forgot password
        }
      }
      .padding(.top, 8)
      .padding(.bottom, 28)      
      
      /// --- Sign in
      PrimaryButton(
        title: "Sign in",
        isDisabled: !viewModel.isFormValid,
        action: {
          viewModel.navigateToHome()
        }
      )
      
      Spacer()
      Spacer()
      /// Don't have any account
      HStack(spacing: 6) {
        Text("Don’t have an account?")
          .foregroundStyle(.secondary)
        ClickableText(title: "Sign up now",fontName: "Lato-Regular", fontSize: 14) {
          viewModel.navigateToSignUp()
        }
      }
      .font(.footnote)
      .padding(.top, 16)
      .frame(maxWidth: .infinity)
    }
    .padding(24)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
  }
}

#Preview {
  SignInView()
}
