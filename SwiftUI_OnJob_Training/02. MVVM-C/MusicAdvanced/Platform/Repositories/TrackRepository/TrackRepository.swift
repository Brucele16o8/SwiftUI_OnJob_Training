//
//  TrackRepository.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

final class TrackRepository: Domain.TrackRepository {
  func fectchTrackDetails(withId id: String) -> any Domain.TrackEntity {
    /// implementation, such calling services or APIs
    return TrackEntity.trackEntityMock1
  }
  
  func searchTracks(query: String) -> [any Domain.TrackEntity] {
    /// implementation, such calling services or APIs
    return TrackEntity.allTrackMock
  }

} /// 🧱
