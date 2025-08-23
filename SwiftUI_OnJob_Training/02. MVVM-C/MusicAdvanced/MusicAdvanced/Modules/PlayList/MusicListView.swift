//
//  MusicListView.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import SwiftUI

struct MusicListView: View {
  @StateObject var viewModel: MusicListViewModel
  
  var body: some View {
    Text("Music List View")
  }
  
} /// 🧱

#Preview {
  MusicListView(viewModel: MusicListViewModel())
}
