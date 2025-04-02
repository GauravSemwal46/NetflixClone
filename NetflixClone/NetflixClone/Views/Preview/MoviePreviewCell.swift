//
//  MoviePreviewCell.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import SwiftUI
import Kingfisher

struct MoviePreviewCell: View {
    var movie: Movie
    let colors: [Color] = [.yellow, .gray, .pink, .red, .blue, .green, .orange]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailUrl)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(lineWidth: 3.0)
                        .foregroundColor(colors.randomElement())
                }
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        MoviePreviewCell(movie: exampleMovie1)
            .frame(width: 165, height: 50)
    }
}
