//
//  UseCaseProvider.swift
//  MusicAdvanced
//
//  Created by Tung Le on 23/8/2025.
//

import Foundation
import Domain

public class UseCaseProvider {
  
  /// === Home Use Case
  public static func makeHomeUseCase() -> Domain.HomeUseCase {
    let playListRepository: Domain.PlayListRepository
    let trackRepository: Domain.TrackRepository
    
    switch AppConfig.shared.configuration {
      
    case .mock:
      playListRepository = MockPlayListRepository()
      trackRepository = MockTrackRepository()
      
    default:
      playListRepository = PlayListRepository()
      trackRepository = TrackRepository()
    }
    
    return HomeUseCase(playListRepository: playListRepository,
                       trackRepository: trackRepository)
  }
  
  /// === Search UseCase
  public static func searchUseCase() -> Domain.SearchUseCase {
    let trackRepository: Domain.TrackRepository
    
    switch AppConfig.shared.configuration {
      
    case .mock:
      /// return Mock Repository here
      trackRepository = MockTrackRepository()
      
    default:
      trackRepository = TrackRepository()
    }
    
    return SearchUseCase(trackRepository: trackRepository)
  }
  
} /// 🧱
