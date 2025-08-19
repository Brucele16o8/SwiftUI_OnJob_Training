//
//  ImageEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public protocol ImageRepository {
  func fetchImages() async throws -> [ImageEntity]
}
