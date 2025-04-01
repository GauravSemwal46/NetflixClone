//
//  ComingSoonViewModel.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import Foundation

class ComingSoonViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
