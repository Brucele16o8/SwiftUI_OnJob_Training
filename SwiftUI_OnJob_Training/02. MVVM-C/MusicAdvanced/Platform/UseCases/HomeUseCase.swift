//
//  HomeUseCases.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

final class HomeUseCase: Domain.HomeUseCase {
  private let playListRepository: Domain.PlayListRepository
  private let trackRepository: Domain.TrackRepository
  
  /// Init
  init(playListRepository: Domain.PlayListRepository, trackRepository: Domain.TrackRepository) {
    self.playListRepository = playListRepository
    self.trackRepository = trackRepository
  }
  
  
  // MARK: - Method
  func getRecommendedList() -> [any Domain.PlayListEntity] {
    playListRepository.fetchRecommendedPlayLists()
  }
  
  func getPlayList(withId id: String) -> any Domain.PlayListEntity {
    playListRepository.fetchPlayList(withId: id)
  }
  
  func getTrackDetails(withId id: String) -> any Domain.TrackEntity {
    trackRepository.fectchTrackDetails(withId: id)
  }
    
} // 🧱
