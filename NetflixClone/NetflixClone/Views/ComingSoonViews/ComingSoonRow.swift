//
//  ComingSoonRow.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import SwiftUI
import Kingfisher
import AVKit

struct ComingSoonRow: View {
    
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    let screen = UIScreen.main.bounds
    var player: AVPlayer {
        AVPlayer(url: exampleVideoUrl)
    }
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(height: 200)
            
            VStack {
                HStack {
                    KFImage(movie.thumbnailUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("Remind me")
                        }
                    }
                    .padding(.horizontal)
                        
                    Button {
                        movieDetailToShow = movie
                    } label: {
                        VStack(spacing: 6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Info")
                        }
                    }
                    .padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        ComingSoonRow(movie: exampleMovie1, movieDetailToShow: .constant(nil))
    }
}
