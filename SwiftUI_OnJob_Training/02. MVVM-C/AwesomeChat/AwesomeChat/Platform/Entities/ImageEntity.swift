//
//  ImageEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation
import Domain

struct ImageEntity: Domain.ImageEntity {
  var id: String
  var url: String
  var width: Int
  var height: Int
}
