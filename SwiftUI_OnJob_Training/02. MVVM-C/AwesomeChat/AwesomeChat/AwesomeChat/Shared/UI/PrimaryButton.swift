//
//  PrimaryButton.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct PrimaryButton: View {
  let title: String

  var isDisabled: Bool = false
  let action: () -> Void
  
  var body: some View {
    Button(action: action) {
      Text(title)
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity)
        .padding()
        .background(isDisabled ? Color.gray : Color.buttonBackground)
        .foregroundStyle(.white)
        .cornerRadius(10)
        .opacity(isDisabled ? 0.5 : 1.0)
    }
    .disabled(isDisabled)
  }
}

#Preview {
  PrimaryButton(title: "PrimaryButton", isDisabled: false) { }
  PrimaryButton(title: "PrimaryButton", isDisabled: true) { }
}
