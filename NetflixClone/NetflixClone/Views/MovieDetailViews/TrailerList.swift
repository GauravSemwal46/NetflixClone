//
//  TrailerList.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageUrl: trailer.thumbnailImageUrl, videoUrl: trailer.videoUrl)
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                        .padding(.horizontal, 10)
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        TrailerList(trailers: exampleTrailers)
    }
    
}
