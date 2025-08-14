//
//  TextFieldFormPassword.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct TextFieldFormPassword: View {
  let title: String
  let placeholder: String
  let bindingPassword: Binding<String>
  @State var isPasswordVisible: Bool = false
  
  
  var body: some View {
    VStack (alignment: .leading) {
      Text(title)
        .foregroundStyle(.gray.opacity(0.8))
      
      ZStack(alignment: .trailing) {
        Group {
          if isPasswordVisible {
            TextField(placeholder, text: bindingPassword)
          } else {
            SecureField(placeholder, text: bindingPassword)
          }
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        
        Button(action: {
          isPasswordVisible.toggle()
        }) {
          Image(systemName: isPasswordVisible ? "key.slash" : "key")
            .rotationEffect(.degrees(45))
            .foregroundStyle(.secondary)
        }
        .padding(.trailing, 12)
      }
      .padding(.bottom)
      .background(Color.white)
      .overlay(
        Rectangle()
          .frame(height: 1)
          .foregroundColor(.gray.opacity(0.8))
          .padding(.top, 40),
        alignment: .bottom
      )
    }
  }
}

#Preview {
  @Previewable @State var password: String = "abcd_1234"
  
  return TextFieldFormPassword(
    title: "PASSWORD",
    placeholder: "*********",
    bindingPassword: $password,
  )
  .padding()
}
