//
//  Episode.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 25/03/25.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageUrlString: String
    var description: String
    var length: Int
    
    var videoUrl: URL
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageUrlString)!
    }
}
