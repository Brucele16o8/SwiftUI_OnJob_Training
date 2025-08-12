//
//  ClickableText.swift
//  AwesomeChat
//
//  Created by Tung Le on 12/8/2025.
//

import SwiftUI

struct ClickableText: View {
  private let title: String
  private let fontName: String
  private let fontSize: CGFloat
  private let action: () -> Void

  init(title: String, fontName: String, fontSize: CGFloat, action: @escaping () -> Void) {
    self.title = title
    self.fontName = fontName
    self.fontSize = fontSize
    self.action = action
  }

  var body: some View {
    Button(action: action) {
      Text(title)
        .font(.custom(fontName, size: fontSize))
        .fontWeight(.semibold)
        .foregroundStyle(.clickableText)
        .contentShape(Rectangle())
    }
    .buttonStyle(.plain)
  }
}


#Preview {
  ClickableText(title: "Button", fontName: "Lato-Regular", fontSize: 20) {
    
  }
}

