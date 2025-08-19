//
//  JobRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public protocol JobRepository {
  func fetchJobs() async throws -> [JobEntity]
}
