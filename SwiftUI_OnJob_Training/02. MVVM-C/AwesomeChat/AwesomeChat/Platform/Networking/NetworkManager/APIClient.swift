//
//  APIClient.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation
import Combine

public class APIClient {
  func execute<T: Codable>(request: URLRequest, type: T.Type) async throws -> T? {
    
    debugPrint("Request", request.url)
    let session = URLSession(configuration: .ephemeral)
    do {
      let (data, response) = try await session.data(for: request)
      let validatedData = try validateData(data, withResponse: response)
      /// Decode the JSON response into the PostResponse struct.
      let decodedResponse = try JSONDecoder.decodeData(from: validatedData,
                                                       as: T.self)
      return decodedResponse
    } catch {
      throw error
    }
  }
  
  private func validateData(_ data: Data, withResponse response: URLResponse) throws -> Data {
    guard let httpResponse = response as? HTTPURLResponse else {
      debugPrint("Failed to cast URLResponse to HTTPSURLResponse")
      let description = "Couldn't cast URLResponse to HTTPSURLResponse."
      let error = APIError.failure(description: description)
      throw error
    }
    
    try validateStatusCode(httpResponse.statusCode, data: data)
    debugPrint("Status code \(httpResponse.statusCode) is valid")
    
    return data
  }
  
  private func validateStatusCode(_ statusCode: Int, data: Data) throws {
    guard (200..<300).contains(statusCode) else {
      debugPrint("Invalid status code: \(statusCode)")
      let description = String(data: data, encoding: .utf8) ?? "Please check your request."
      let error = APIError.badStatusCode(code: statusCode, description: description)
      throw error
    }
  }
  
} /// 🧱
