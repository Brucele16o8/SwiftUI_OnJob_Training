//
//  SearchView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import SwiftUI

struct SearchView: View {
  @StateObject var searchViewModel: SearchViewModel = .init()
  
  var body: some View {
    Text("Search View")
  }
}

#Preview {
  SearchView(searchViewModel: SearchViewModel())
}
