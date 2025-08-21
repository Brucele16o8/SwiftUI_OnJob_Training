//
//  Endpoint.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public enum HttpMethod: String {
  case get = "GET"
  case post = "POST"
  case delete = "DELETE"
  case put = "PUT"
  case fetch = "FETCH"
}

public typealias Endpoint = EndpointType

public protocol EndpointType {
  var httpMethod: HttpMethod { get }
  var parameters: [String: Any] { get }
}

struct uploadEndpoint: EndpointType {
  let param: UploadParams
  
  var httpMethod: HttpMethod = .post
  var parameters: [String : Any] {
    var params: [String: Any] = [:]
    if let json = try? param.params.toJSON() as? [String: Any] {
        params.merge(json, uniquingKeysWith: {_, _ in true })
    }
    return params
  }
}

struct sampleDataEndpoint: EndpointType {
  var httpMethod: HttpMethod = .get
  var parameters: [String : Any] {
    ["limit": 10]
  }
}



//public enum Endpoint {
//  case getSampleDatas
//  case upload(params: UploadParams)
//  
//  var httpMethod: HttpMethod {
//    switch self {
//    case .getSampleDatas:
//      return .get
//    case .upload:
//      return .post
//    }
//  }
//  
//  var parameters: [String: Any] {
//    var params: [String: Any] = [:]
//    switch self {
//    case .getSampleDatas:
//      return ["limit": 10]
//    case .upload(let param):
//      if let json = try? param.params.toJSON() as? [String: Any] {
//          params.merge(json, uniquingKeysWith: {_, _ in true })
//      }
//      return params
//    }
//  }
//}
