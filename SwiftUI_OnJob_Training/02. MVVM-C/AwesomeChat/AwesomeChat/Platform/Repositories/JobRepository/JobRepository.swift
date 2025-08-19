//
//  JobRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation
import Domain

class JobRepository: Domain.JobRepository {
    func fetchJobs() async throws -> [Domain.JobEntity] {
        try await Task.sleep(nanoseconds: 2_000_000_000) /// delay 2 seconds for API calling simulation
        return JobEntity.listEntities()
    }
}
