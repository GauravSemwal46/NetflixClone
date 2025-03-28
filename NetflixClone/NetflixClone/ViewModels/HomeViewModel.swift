//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    // string == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public var allGeneres: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCategory category: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            return (movies[category] ?? []).filter { ($0.movieType == .movie) && ($0.genre == genre) }
        case .tvShows:
            return (movies[category] ?? []).filter { ($0.movieType == .tvShow) && ($0.genre == genre) }
        case .myList:
            return movies[category] ?? []
            // TODO: Setup MyList properly
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Release"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi"] = exampleMovies.shuffled()
    }
}
