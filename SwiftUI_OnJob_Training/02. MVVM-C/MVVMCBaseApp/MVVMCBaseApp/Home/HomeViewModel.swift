//
//  HomeViewModel.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 9/8/2025.
//

import SwiftUI
import Stinsen

class HomeViewModel: BaseViewModel {
  @RouterObject var router: HomeCoordinator.Router?
  
  func didSelectDetail(message: String) {
    router?.route(to: \.pushToDetail, message)
  }
}
