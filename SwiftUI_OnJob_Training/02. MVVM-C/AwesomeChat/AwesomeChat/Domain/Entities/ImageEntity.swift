//
//  ImageEntiry.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public protocol ImageEntity: Codable {
  var id: String { get set }
  var url: String { get set }
  var width: Int { get set }
  var height: Int { get set }
}
