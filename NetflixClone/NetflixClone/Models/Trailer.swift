//
//  Trailer.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoUrl: URL
    var thumbnailImageUrl: URL
}
