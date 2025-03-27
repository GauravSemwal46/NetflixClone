//
//  MoreLikeThisView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import SwiftUI

struct MoreLikeThisView: View {
    
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<movies.count) { index in
                StandardHomeMovieView(movie: movies[index])
            }
        }
    }
}

#Preview {
    MoreLikeThisView(movies: exampleMovies)
}
