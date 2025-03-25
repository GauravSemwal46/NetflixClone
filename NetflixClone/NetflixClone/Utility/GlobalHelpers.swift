//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import Foundation
import SwiftUI

let exampleMovie1 =  Movie(id: UUID().uuidString, name: "Dark", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 1)
let exampleMovie2 =  Movie(id: UUID().uuidString, name: "Travelers", thumbnailUrl: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 2)
let exampleMovie3 =  Movie(id: UUID().uuidString, name: "Community", thumbnailUrl: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 3, promotionalHeadline: "New episodes coming soon")
let exampleMovie4 =  Movie(id: UUID().uuidString, name: "Alone", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 4)
let exampleMovie5 =  Movie(id: UUID().uuidString, name: "Hannibal", thumbnailUrl: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5, promotionalHeadline: "Watch season 5 now")
let exampleMovie6 =  Movie(id: UUID().uuidString, name: "After life", thumbnailUrl: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6)

let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(colors: [.black.opacity(0.0), .black.opacity(0.95)], startPoint: .top, endPoint: .bottom)
}
