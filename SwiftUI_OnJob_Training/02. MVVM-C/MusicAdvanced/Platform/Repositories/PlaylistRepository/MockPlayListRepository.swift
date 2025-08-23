//
//  MockPlayListRepository.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

final class MockPlayListRepository: Domain.PlayListRepository {
  func fetchRecommendedPlayLists() -> [any Domain.PlayListEntity] {
    /// implementation, such calling services or APIs
    return PlayListEntity.allPlayListsMock
  }
  
  func fetchPlayList(withId id: String) -> any Domain.PlayListEntity {
    /// implementation, such calling services or APIs
    return PlayListEntity.playListMock1
  }

} /// 🧱
