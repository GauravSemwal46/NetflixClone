//
//  Movie.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailUrl: URL
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    // Movie Detail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var accentColor: Color = .white
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionalHeadline: String?
    
    var trailers: [Trailer]
    
    var previewImageName: String
    var previewVideoUrl: URL?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season): E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season): E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
