//
//  SplashScreen.swift
//  AwesomeChat
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI

struct SplashScreen: View {
  let onFinish: () -> Void
  
  var body: some View {
    ZStack {
      GradientBackground()
      VStack {
        Spacer()
        
        /// --- Icon
        Image("splash-screen-icon")
          .resizable()
          .scaledToFit()
          .frame(width: 164, height: 164)
          .shadow(radius: 6, x: 0, y: 6)
        
        /// --- Text
        HStack {
          Text("Awesome")
            .font(.custom("Exo-Black", size: 40))
            .foregroundStyle(.white)
          
          Text("Chat")
            .font(.custom("Exo-Light", size: 40))
            .foregroundStyle(.white)
        }
        
        Spacer()
        Spacer()
      }
    }
    .onAppear {
      onFinish()
    }
  }
}


#Preview {
  SplashScreen(onFinish: { })
}
