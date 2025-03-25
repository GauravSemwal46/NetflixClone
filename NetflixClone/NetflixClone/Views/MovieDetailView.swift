//
//  MovieDetailView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 25/03/25.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                       // Close this view
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovieView(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadlineView()
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    MovieDetailView(movie: exampleMovie5)
}

struct MovieInfoSubheadlineView: View {
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text("MOVIE YEAR")
            Text("RATING")
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
