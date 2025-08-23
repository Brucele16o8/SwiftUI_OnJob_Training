//
//  SearchUseCase.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

final class SearchUseCase: Domain.SearchUseCase  {
  private let trackRepository: Domain.TrackRepository

  /// Init
  init(trackRepository: Domain.TrackRepository) {
    self.trackRepository = trackRepository
  }
  
  
  // MARK: - Methods
  func searchTracks(query: String) -> [any Domain.TrackEntity] {
    trackRepository.searchTracks(query: query)
  }
  
} /// 🧱
