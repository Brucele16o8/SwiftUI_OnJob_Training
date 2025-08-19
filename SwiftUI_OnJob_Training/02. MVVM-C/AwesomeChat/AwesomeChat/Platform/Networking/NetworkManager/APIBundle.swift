//
//  APIBundle.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

public enum APIBundle {
  case upload
  case api
}

public extension APIBundle {
  
  var baseURL: String {
    switch self {
    case .api:
      return "https://api.thecatapi.com/v1/images"
    case .upload:
      return ""
    }
  }
  
}


public extension APIBundle {
  func path(for endpoint: Endpoint) -> String {
    switch endpoint {
    case .upload:
      return ""
    case .getSampleDatas:
      return "search"
    default:
      return ""
    }
  }
}
