//
//  SearchUseCase.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

public protocol SearchUseCase {
  func searchTracks(query: String) -> [TrackEntity]
}

