//
//  HomeViewModel.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain
import Stinsen
import SwiftUI

final class HomeViewModel: ObservableObject {
  @RouterObject var router: HomeCoordinator.Router?
  private let homeUseCase: HomeUseCase
  
  
  init(homeUseCase: HomeUseCase) {
    self.homeUseCase = homeUseCase
  }
  
} /// 🧱
