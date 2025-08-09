//
//  GradientBackground.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct GradientBackground: View {
  var gradient: Gradient {
    let color1 = Color("gradient-top")
    let color2 = Color("gradient-bottom")
    return Gradient(
      stops: [
        Gradient.Stop(color: color1, location: 0),
        Gradient.Stop(color: color2, location: 1)
      ])
  }
  
  var body: some View {
    LinearGradient(
      gradient: gradient,
      startPoint: .top,
      endPoint: .bottom
    )
    .ignoresSafeArea()
  }
}

#Preview {
  GradientBackground()
}
