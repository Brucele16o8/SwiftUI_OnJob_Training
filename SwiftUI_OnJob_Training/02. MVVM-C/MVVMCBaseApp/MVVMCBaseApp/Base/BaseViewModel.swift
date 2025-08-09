//
//  BaseViewModel.swift
//  MVVMCBaseApp
//
//  Created by Tung Le on 7/8/2025.
//

import Foundation
import Stinsen

protocol BaseViewModel: ObservableObject {
  associatedtype CoordinatorType: NavigationCoordinatable
  var router: CoordinatorType.Router? { get set }
}


extension BaseViewModel {
  func popToRoot() {
    router?.coordinator.popToRoot()
  }
  
  func popLast() {
    router?.coordinator.popLast()
  }
}
