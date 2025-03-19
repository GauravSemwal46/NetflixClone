//
//  StandardHomeMovieView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailUrl)
            .resizable()
            .scaledToFill()
    }
}

#Preview {
    StandardHomeMovieView(movie: exampleMovie1)
}
