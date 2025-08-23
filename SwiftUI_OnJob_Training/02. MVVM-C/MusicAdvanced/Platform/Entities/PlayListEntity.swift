//
//  PlayListEntity.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Domain

struct PlayListEntity: Domain.PlayListEntity {
  var id: String
  var name: String
}

extension PlayListEntity {
  static var playListMock1 = PlayListEntity(id: "1", name: "PlayList Mock 1")
  static var playListMock2 = PlayListEntity(id: "2", name: "PlayList Mock 2")
  static var playListMock3 = PlayListEntity(id: "3", name: "PlayList Mock 3")
  
  static var allPlayListsMock: [PlayListEntity] = [playListMock1,
                                                   playListMock2,
                                                   playListMock3]
}
