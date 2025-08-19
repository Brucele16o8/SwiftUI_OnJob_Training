//
//  ImageRepository.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation
import Domain

class ImageRepository: Domain.ImageRepository {
  func fetchImages() async throws -> [any Domain.ImageEntity] {
    let router = APIRouter(endpoint: .getSampleDatas, bundle: .api)
    let request = try router.asURLRequest()
    return try await APIClient().execute(request: request, type: [ImageEntity].self) ?? []
  }
  
}
