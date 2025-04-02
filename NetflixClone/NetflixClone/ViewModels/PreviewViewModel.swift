//
//  PreviewViewModel.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 02/04/25.
//

import Foundation

class PreviewViewModel: ObservableObject {
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
