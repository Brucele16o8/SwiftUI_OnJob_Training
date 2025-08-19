//
//  HomeUseCase.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

import Foundation

public protocol HomeUseCase {
  func getUser() async throws -> any UserEntity
  func getJobList() async throws -> [JobEntity]
  func getImages() async throws -> [ImageEntity]
}
