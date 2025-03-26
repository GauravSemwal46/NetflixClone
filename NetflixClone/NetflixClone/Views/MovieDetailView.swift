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
                        MovieInfoSubheadlineView(movie: movie)
                        if movie.promotionalHeadline != nil {
                            Text(movie.promotionalHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            CurrentEpisodeInformation(movie: movie)
                            CastView(movie: movie)
                        }
                    }
                    .padding(.horizontal, 10)
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
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastView: View {
    var movie: Movie
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Cast: \(movie.cast)")
            Text("Creators: \(movie.creators)")
            
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            Text(movie.episodeInfoDisplay)
                .bold()
            Text(movie.episodeDescriptionDisplay)
                .font(.subheadline)
        }
    }
}
