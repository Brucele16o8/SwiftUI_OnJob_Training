//
//  TextView.swift
//  SwiftUI_OnJob_Training
//
//  Created by Tung Le on 5/8/2025.
//

import SwiftUI

struct TextView: View {
  var body: some View {
    Text("Hello World!")
      .background(.purple)
      .padding()
      .background(.blue)
      .padding()
      .foregroundStyle(.white)
      .background(.yellow)
    
    Image(systemName: "star.hexagon")
      .resizable()
      .frame()
      .foregroundStyle(.yellow)
      .background(.red)
      .font(.title)
  } /// ----- body
  
}


#Preview {
  TextView()
}
