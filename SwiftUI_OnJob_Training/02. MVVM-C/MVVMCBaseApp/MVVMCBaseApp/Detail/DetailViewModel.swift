//
//  Dte.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 9/8/2025.
//

import Foundation
import Stinsen

class DetailViewModel: BaseViewModel {
  @RouterObject var router: HomeCoordinator.Router?
  @Published var message: String
  
  init(message: String) {
    self.message = message
  }
  
  func onBack() {
    self.popLast()
  }
}
