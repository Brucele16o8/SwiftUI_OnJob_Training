//
//  HomeUseCase.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

public protocol HomeUseCase {
  func getRecommendedList() -> [PlayListEntity]
  func getPlayList(withId id: String) -> PlayListEntity
  func getTrackDetails(withId id: String) -> TrackEntity
}
