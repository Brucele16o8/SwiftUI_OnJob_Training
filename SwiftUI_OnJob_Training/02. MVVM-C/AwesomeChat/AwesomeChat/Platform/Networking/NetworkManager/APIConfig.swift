//
//  APIConfig.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

struct APIConfig {
  static let apiKey = ""
  static let encodeKey = ""
  
  static let timeoutInterval: TimeInterval = 30
  
  static var defaultHeader: [String: String] {
    var headers: [String: String] = [:]
    
    for header in HttpHeaderField.allCases {
      headers[header.rawValue] = header.content
    }
    return headers
  }
  
} /// 🧱


extension APIConfig {
  
  /// The Header Field
  enum HttpHeaderField: String, CaseIterable {
    case apiKey
    case encodeKey
    
    var content: String {
      switch self {
      case .apiKey:
        return APIConfig.apiKey
      case .encodeKey:
        return APIConfig.encodeKey
      }
    }
  }
  
} /// 🧱
