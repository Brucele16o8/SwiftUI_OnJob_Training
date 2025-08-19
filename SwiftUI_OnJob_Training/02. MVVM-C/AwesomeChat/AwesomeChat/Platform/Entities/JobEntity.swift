//
//  JobEntity.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Domain
import Foundation

struct JobEntity: Domain.JobEntity {
  var name: String
  var id: Int
}

extension JobEntity {
  static func mockListEntities() -> [JobEntity] {
    return [JobEntity(name: "Software Engineer Mock", id: 1),
            JobEntity(name: "Doctor Mock", id: 2),
            JobEntity(name: "Nurse Mock", id: 3)]
  }
  
  static func listEntities() -> [JobEntity] {
    return [JobEntity(name: "Software Engineer", id: 1),
            JobEntity(name: "Doctor", id: 2),
            JobEntity(name: "Nurse", id: 3)]
  }
}
