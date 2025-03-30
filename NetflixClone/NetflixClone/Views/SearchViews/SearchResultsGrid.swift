//
//  SearchResultsGrid.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 30/03/25.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovieView(movie: movie)
                    .frame(height: 160)
                    .onTapGesture {
                        self.movieDetailToShow = movie
                    }
            }
        }
    }
}

#Preview {
    SearchResultsGrid(movies: generateMovies(21), movieDetailToShow: .constant(nil))
}
