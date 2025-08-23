//
//  PlayListRepository.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

public protocol PlayListRepository {
  func fetchRecommendedPlayLists() -> [PlayListEntity]
  func fetchPlayList(withId id: String) -> PlayListEntity
}
