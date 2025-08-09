//
//  Untitled.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct TextFieldFormGeneralStyle: View {
  let title: String
  let placeholder: String
  @Binding var text: String
  let keyboardType: UIKeyboardType? = nil
  let iconName: String
  
  var body: some View {
    VStack (alignment: .leading) {
      Text(title)
        .foregroundStyle(.gray.opacity(0.8))
      
      ZStack(alignment: .trailing) {
        TextField(placeholder, text: $text)
          .textInputAutocapitalization(.never)
          .disableAutocorrection(true)
        
        Image(systemName: iconName)
          .foregroundStyle(.blue)
      }
      .padding(.bottom)
      .background(Color.white)
      .overlay(
        Rectangle()
          .frame(height: 1)
          .foregroundColor(.gray.opacity(0.8))
          .padding(.top, 40)
        , alignment: .bottom
      )
    }
  }
}

#Preview {
  TextFieldFormGeneralStyle(
    title: "EMAIL",
    placeholder: "youremail@example.com",
    text: .constant(""),
    iconName: "envelope"
  )
  .padding()
}
