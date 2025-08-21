//
//  APIBundle.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

public typealias APIBundle = APIBundleService

public protocol APIBundleService {
  var baseURL: String { get }
  func path(for endpoint: Endpoint) -> String
}

/// upload API
struct UploadAPIClient: APIBundleService {
  var baseURL: String {
    return "https://api.thecatapi.com/v1/images"
  }
  
  func path(for endpoint: Endpoint) -> String {
    return ""
  }
}

/// sample API
struct SampleAPIClient: APIBundleService {
  var baseURL: String {
    return ""
  }
  
  func path(for endpoint: Endpoint) -> String {
    return "search"
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
