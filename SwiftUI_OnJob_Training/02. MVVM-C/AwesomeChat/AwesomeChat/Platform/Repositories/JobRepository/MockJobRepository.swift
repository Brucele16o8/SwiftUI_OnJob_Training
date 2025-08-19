//
//  Untitled.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation
import Domain

final class MockJobRepository: Domain.JobRepository {
    func fetchJobs() async throws -> [Domain.JobEntity] {
        return JobEntity.mockListEntities()
    }
}
