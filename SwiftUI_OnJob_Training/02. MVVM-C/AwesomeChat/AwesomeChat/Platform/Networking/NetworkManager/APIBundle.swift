//
//  APIBundle.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//
import Foundation

public typealias APIBundle = APIBundleService

public protocol APIBundleService {
  var baseURL: String { get }
}

/// API
struct GetAPIClient: APIBundleService {
  var baseURL: String {
    return "https://api.thecatapi.com/v1/images"
  }
}

/// sample API
struct SampleAPIClient: APIBundleService {
  var baseURL: String {
    return ""
  }
}


//public enum APIBundle {
//  case upload
//  case api
//}
//
//public extension APIBundle {
//  
//  var baseURL: String {
//    switch self {
//    case .api:
//      return "https://api.thecatapi.com/v1/images"
//    case .upload:
//      return ""
//    }
//  }
//  
//}
//
//
//public extension APIBundle {
//  func path(for endpoint: Endpoint) -> String {
//    switch endpoint {
//    case .upload:
//      return ""
//    case .getSampleDatas:
//      return "search"
//    default:
//      return ""
//    }
//  }
//}
