//
//  SongRepository.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//
import Foundation

public protocol TrackRepository {
  func fectchTrackDetails(withId id: String) -> TrackEntity
  func searchTracks(query: String) -> [TrackEntity]
}
