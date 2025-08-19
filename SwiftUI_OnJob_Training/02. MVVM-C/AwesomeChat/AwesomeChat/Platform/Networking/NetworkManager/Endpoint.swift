//
//  Endpoint.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

enum HttpMethod: String {
  case get = "GET"
  case post = "POST"
  case delete = "DELETE"
  case put = "PUT"
  case fetch = "FETCH"
}

public enum Endpoint {
  case getSampleDatas
  case upload(params: UploadParams)
  
  var httpMethod: HttpMethod {
    switch self {
    case .getSampleDatas:
      return .get
    case .upload:
      return .post
    }
  }
  
  var parameters: [String: Any] {
    var params: [String: Any] = [:]
    switch self {
    case .getSampleDatas:
      return ["limit": 10]
    case .upload(let param):
      if let json = try? param.params.toJSON() as? [String: Any] {
          params.merge(json, uniquingKeysWith: {_, _ in true })
      }
      return params
    }
  }
}
