//
//  TrackEntity.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain
import Foundation


struct TrackEntity: Domain.TrackEntity {
  var id: String
  var name: String
}

extension TrackEntity {
  static var trackEntityMock1 = TrackEntity(id: "1", name: "Track 1")
  static var trackEntityMock2 = TrackEntity(id: "2", name: "Track 2")
  static var trackEntityMock3 = TrackEntity(id: "3", name: "Track 3")
  
  static var allTrackMock = [trackEntityMock1,
                             trackEntityMock2,
                             trackEntityMock3]
}
