//
//  APIRouter.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public struct APIRouter {
  var endpoint: Endpoint
  var bundle: APIBundle
  
  // MARK: - URLRequestConvertible
  public func asURLRequest() throws -> URLRequest {
    let path = endpoint.path
    let baseURL = bundle.baseURL
    let fullURL = "\(baseURL)/\(path)"
    
    let url = URL(string: fullURL)!
    let method = endpoint.httpMethod
    
    var urlRequest = URLRequest(url: url)
    
    /// http method
    urlRequest.httpMethod = method.rawValue
    
    for header in APIConfig.defaultHeader {
      urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
    }
    
    urlRequest.timeoutInterval = APIConfig.timeoutInterval
    
    switch method {
    case .get:
      if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) {
        urlComponents.queryItems = try endpoint.parameters.map { (key, value) in
          URLQueryItem(name: key, value: "\(value)")
        }
        urlRequest.url = urlComponents.url
      }
    case .delete, .post, .put, .fetch:
      if let httpBody = try? JSONSerialization.data(withJSONObject: endpoint.parameters) {
        urlRequest.httpBody = httpBody
      }
    }
    
    return urlRequest
  }
  
} /// 🧱

extension Dictionary where Key == String, Value == Any {
  func toQueryString() -> String {
    self.map { key, value in
      let keyEncoded = key.addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowedStrict) ?? ""
      let valueEncoded = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowedStrict) ?? ""
      return "\(keyEncoded)=\(valueEncoded)"
    }
    .joined(separator: "&")
  }
}


extension CharacterSet {
  static let urlQueryValueAllowedStrict: CharacterSet = {
    var allowed = CharacterSet.urlQueryAllowed
    allowed.remove(charactersIn: "!*'();:@&=+$,/?%#[] ")
    return allowed
  }()
}
