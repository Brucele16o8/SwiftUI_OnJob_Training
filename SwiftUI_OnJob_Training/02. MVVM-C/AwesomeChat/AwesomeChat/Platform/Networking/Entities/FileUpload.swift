//
//  FileUpload.swift
//  AwesomeChat
//
//  Created by Tung Le on 19/8/2025.
//

import Foundation

public struct FileUpload {
  var name: String
  var file: URL
  var key: String
  
  public init(name: String, file: URL, key: String = "files") {
    self.name = name
    self.file = file
    self.key = key
  }
}
