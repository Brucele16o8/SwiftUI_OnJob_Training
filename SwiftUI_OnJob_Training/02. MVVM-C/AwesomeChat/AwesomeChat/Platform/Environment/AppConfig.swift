//
//  AppConfig.swift
//  AwesomeChat
//
//  Created by Tung Le on 14/8/2025.
//

class AppConfig {
  static let shared = AppConfig()
  
  var configuration: BuildConfiguration {
//#if MOCK
//    return .mock
//#elseif STAGING
//    return .dev
//#else
//    return .prod
//#endif
    
    /// temporary return MOCK for now
    return .mock
  }
} /// 🧱
