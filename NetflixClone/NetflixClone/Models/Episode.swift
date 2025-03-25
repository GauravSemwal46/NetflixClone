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
    var thumbnaiilImageUrlString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnaiilImageUrlString)!
    }
}
