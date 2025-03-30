//
//  PopularMovieView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 30/03/25.
//

import SwiftUI
import Kingfisher

struct PopularMovieView: View {
    
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailUrl)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                Text(movie.name)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrowtriangle.right.fill")
                }
                .padding(.trailing, 20)
            }
            .foregroundColor(.white)
            .onTapGesture {
                self.movieDetailToShow = movie
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        PopularMovieView(movie: exampleMovie1, movieDetailToShow: .constant(nil))
            .frame(height: 75)
    }
}
