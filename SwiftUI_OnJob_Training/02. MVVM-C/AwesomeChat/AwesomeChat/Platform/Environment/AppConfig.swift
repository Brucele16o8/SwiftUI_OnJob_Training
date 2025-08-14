//
//  AppConfig.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

class AppConfig {
  static let shared = AppConfig()
  
  enum ConfigurationEnvironment {
    case mock
    case debug
    case test
  }
  
  var configuration: ConfigurationEnvironment = .debug
} /// 🧱
