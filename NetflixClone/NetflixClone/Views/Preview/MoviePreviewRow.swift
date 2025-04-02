//
//  MoviePreviewRow.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import SwiftUI

struct MoviePreviewRow: View {
    var movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]
                        
                        MoviePreviewCell(movie: movie)
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 14)
                            .padding(.leading, 6)
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        MoviePreviewRow(movies: exampleMovies)
    }
}
