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
    VStack(alignment: .leading) {
      /// Sign up heading
      ClickableText(title: "Sign Up", fontName: "Lato-Bold", fontSize: 25) {
        /// do nothing for now
      }
      .padding(.bottom, 32)
      
      /// --- User name
      TextFieldFormGeneralStyle(
        title: "USER NAME",
        placeholder: "Username",
        text: $viewModel.username,
        iconName: "person"
      )
      .padding(.bottom, 24)
      
      /// --- Email
      TextFieldFormGeneralStyle(
        title: "EMAIL",
        placeholder: "youremail@example.com",
        text: $viewModel.email,
        iconName: "envelope"
      )
      .padding(.bottom, 24)
      
      /// --- Password
      TextFieldFormPassword(
        title: "PASSWORD",
        placeholder: "********",
        bindingPassword: $viewModel.password
      )
      
      // Terms and Conditions
      HStack(spacing: 0) {
        Button {
          viewModel.agreeToTerms.toggle()
        } label: {
          Image(systemName: viewModel.agreeToTerms ? "checkmark.circle.fill" : "circle")
            .font(.title3)
            .foregroundStyle(viewModel.agreeToTerms ? Color(.buttonBackground) : .secondary)
            .accessibilityLabel(viewModel.agreeToTerms ? "Checked" : "Unchecked")
            .accessibilityAddTraits(.isButton)
        }
        .buttonStyle(.plain)
        .padding(.horizontal, 8)
        
        Group {
          Text("I agree to the ")
          ClickableText(title: "Terms",fontName: "Lato-Regular", fontSize: 14) {
            /// Later
          }
          Text(" and ")
          ClickableText(title: "Conditions",fontName: "Lato-Regular", fontSize: 14) {
            /// Later
          }
        }
        .font(.subheadline)
      }
      .padding(.vertical, 28)
      .frame(maxWidth: .infinity)
      
      /// Sign up button
      PrimaryButton(
        title: "Sign up",
        isDisabled: !viewModel.isFormValid
      ) {
        /// Later
      }
      
      /// Already have account
      Spacer()
      HStack(spacing: 6) {
        Text("Already have an account?")
          .foregroundStyle(.secondary)
          .font(.custom("Label-Bold", size: 14))
        ClickableText(title: "Sign in now", fontName: "Label-Bold", fontSize: 14) {
          viewModel.navigateToSignIn()
        }
      }
      .frame(maxWidth: .infinity)
      .padding(.top, 16)
      
      Spacer().frame(height: 8)
      
    }
    .padding(24)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
  }
}

#Preview {
  SignUpView()
}
